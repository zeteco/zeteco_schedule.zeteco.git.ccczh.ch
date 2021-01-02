OUTPUT_DIR = ./2017/de

SSH_HOST = fahrplan.zeteco.ch
SSH_USER = webzeteco
TARGET_DIR = /srv/www/fahrplan.zeteco.ch/

.PHONY: upload

upload:
	rsync --rsh=ssh -P -rvzc --cvs-exclude --delete --exclude=Makefile $(OUTPUT_DIR)/ $(SSH_USER)@$(SSH_HOST):$(TARGET_DIR)
