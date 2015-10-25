#!/bin/bash

export PYTHONUNBUFFERED=1
export ANSIBLE_FORCE_COLOR=true
export ANSIBLE_HOST_KEY_CHECKING=false
export ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o ControlMaster=auto -o ControlPersist=60s'

ansible all \
  --ask-pass \
  --user=vagrant \
  --connection=ssh \
  --inventory-file=.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory \
  -m "command" -a "uname -a"
