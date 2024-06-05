#!/usr/bin/make -f
SHELL=/bin/bash

URL=https://github.com/tonejito/ansible-pull.git
BRANCH=main
DIRECTORY=/var/local/ansible
INVENTORY=${DIRECTORY}/inventory.yml
PLAYBOOK=playbook.yml

run:
	ansible-pull \
	  --purge \
	  --url ${URL} \
	  --checkout ${BRANCH} \
	  --directory ${DIRECTORY} \
	  --inventory ${INVENTORY} \
	  ${PLAYBOOK} \
	;
