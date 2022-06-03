#!/bin/bash
# Copyright (c) 2000-2017 Synology Inc. All rights reserved.

export GPG_TTY=$(tty)
echo "use-agent" > ~/.gnupg/gpg.conf
echo "pinentry-mode loopback" > ~/.gnupg/gpg.conf

echo "allow-loopback-pinentry" > ~/.gnupg/gpg-agent.conf

echo RELOADAGENT | gpg-connect-agent

gpg --batch --gen-key <<EOF
Key-Type: 1
Key-Length: 2048
Subkey-Type: 1
Subkey-Length: 2048
Name-Real: Root Jinlife
Name-Email: root@handbook.westarete.com
Expire-Date: 0
EOF