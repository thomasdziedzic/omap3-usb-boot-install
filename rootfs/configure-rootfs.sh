#!/usr/bin/bash

# exit immediately when a command returns a nonzero
set -e

# enable logging in through serial
systemctl enable getty@ttyGS0
echo "ttyGS0" >> etc/securetty
echo "ttyO2" >> etc/securetty

systemctl enable sshd

systemctl enable omap-idle
