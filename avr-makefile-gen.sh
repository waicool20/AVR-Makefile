#!/usr/bin/env bash
echo "----------Project information----------"
echo "Enter a project name:"
read PROJECT_NAME
echo 
echo "Enter your source files (Space separated and include file extensions):"
read SOURCE
echo 
echo "Enter target microcontroller:"
read MCU
echo 
echo "Enter microcontroller clock frequency in Hz:			"
read MCU_FREQ
echo 
echo "----------AVRDUDE information----------"
echo "Enter processor family:"
read AVRDUDE_PROCESSOR
echo 
echo "Enter programmer name:"
read AVRDUDE_PROGRAMMER
echo 
echo "Enter programming port:"
read AVRDUDE_PORT
echo 
echo "Generating Makefile...."

printf "###############################################################################\n" > Makefile
printf "#\n" >> Makefile
printf "# AVR MAKEFILE TEMPLATE BY WAICOOL20\n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "#\n" >> Makefile
printf "# PROJECT OPTIONS\n" >> Makefile
printf "#\n" >> Makefile
printf "# PROJECT_NAME: 					Name of project, used for final output file names\n" >> Makefile
printf "# SOURCE:									List source files here with extension e.g. test.c\n" >> Makefile
printf "# MCU:										Target microcontroller\n" >> Makefile
printf "# MCU_FREQ:								Microcontroller clock frequency in Hz \n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "PROJECT_NAME = ${PROJECT_NAME}\n" >> Makefile
printf "SOURCE = ${SOURCE}\n" >> Makefile
printf "MCU = ${MCU}\n" >> Makefile
printf "MCU_FREQ = ${MCU_FREQ}\n" >> Makefile
printf "\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "#\n" >> Makefile
printf "# PROGRAMMING OPTIONS\n" >> Makefile
printf "#\n" >> Makefile
printf "# AVRDUDE: 								Command to execute avrdude\n" >> Makefile
printf "# AVRDUDE_PROGRAMMER:			Programming hardware you use\n" >> Makefile
printf "# AVRDUDE_PORT:						Port used for programming\n" >> Makefile
printf "# AVRDUDE_PROCESSOR:			Processor family of MCU (Could be same name as MCU,\n" >> Makefile
printf "#													its here just in case)\n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "AVRDUDE = avrdude\n" >> Makefile
printf "AVRDUDE_PROCESSOR = ${AVRDUDE_PROCESSOR}\n" >> Makefile
printf "AVRDUDE_PROGRAMMER = ${AVRDUDE_PROGRAMMER}\n" >> Makefile
printf "AVRDUDE_PORT = ${AVRDUDE_PORT}\n" >> Makefile
printf "\n" >> Makefile
printf "AVRDUDE_GENERAL_COMMAND = \"\$(AVRDUDE) -c \$(AVRDUDE_PROGRAMMER) -P \$(AVRDUDE_PORT) -p \$(AVRDUDE_PROCESSOR) -v\"\n" >> Makefile
printf "\n" >> Makefile
printf "\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "#\n" >> Makefile
printf "# FILENAME DEFINITIONS\n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "ELF_FILE = \"\$(PROJECT_NAME).elf\"\n" >> Makefile
printf "MAP_FILE = \"\$(PROJECT_NAME).map\"\n" >> Makefile
printf "LST_FILE = \"\$(PROJECT_NAME).lst\"\n" >> Makefile
printf "\n" >> Makefile
printf "FLASH_FILE = \"\$(PROJECT_NAME)_FLASH.hex\"\n" >> Makefile
printf "EEPROM_FILE = \"\$(PROJECT_NAME)_EEPROM.hex\"\n" >> Makefile
printf "FUSES_FILE = \"\$(PROJECT_NAME)_FUSES.hex\"\n" >> Makefile
printf "LFUSE_FILE = \"\$(PROJECT_NAME)_LFUSE.hex\"\n" >> Makefile
printf "HFUSE_FILE = \"\$(PROJECT_NAME)_HFUSE.hex\"\n" >> Makefile
printf "EFUSE_FILE = \"\$(PROJECT_NAME)_EFUSE.hex\"\n" >> Makefile
printf "\n" >> Makefile
printf "BFLASH_FILE = \"\$(PROJECT_NAME)_FLASH.bin\"\n" >> Makefile
printf "BEEPROM_FILE = \"\$(PROJECT_NAME)_EEPROM.bin\"\n" >> Makefile
printf "BFUSES_FILE = \"\$(PROJECT_NAME)_FUSES.bin\"\n" >> Makefile
printf "BLFUSE_FILE = \"\$(PROJECT_NAME)_LFUSE.bin\"\n" >> Makefile
printf "BHFUSE_FILE = \"\$(PROJECT_NAME)_HFUSE.bin\"\n" >> Makefile
printf "BEFUSE_FILE = \"\$(PROJECT_NAME)_EFUSE.bin\"\n" >> Makefile
printf "\n" >> Makefile
printf "SFLASH_FILE = \"\$(PROJECT_NAME)_FLASH.srec\"\n" >> Makefile
printf "SEEPROM_FILE = \"\$(PROJECT_NAME)_EEPROM.srec\"\n" >> Makefile
printf "SFUSES_FILE = \"\$(PROJECT_NAME)_FUSES.srec\"\n" >> Makefile
printf "SLFUSE_FILE = \"\$(PROJECT_NAME)_LFUSE.srec\"\n" >> Makefile
printf "SHFUSE_FILE = \"\$(PROJECT_NAME)_HFUSE.srec\"\n" >> Makefile
printf "SEFUSE_FILE = \"\$(PROJECT_NAME)_EFUSE.srec\"\n" >> Makefile
printf "\n" >> Makefile
printf "\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "#\n" >> Makefile
printf "# COMPILER OPTIONS\n" >> Makefile
printf "#\n" >> Makefile
printf "# CC:											Command to execute avr-gcc\n" >> Makefile
printf "# OBJCOPY:								Command to execute avr-objcopy\n" >> Makefile
printf "# OBJDUMP:								Command to execute avr-objdump\n" >> Makefile
printf "# OPT:										Code optimization level [0,1,2,3,s]\n" >> Makefile
printf "# CFLAGS:									Switches for when compiling C\n" >> Makefile
printf "# ASMFLAGS:								Switches for when compiling Assembly\n" >> Makefile
printf "# LDFLAGS:								Switches to pass onto linker\n" >> Makefile
printf "# \n" >> Makefile
printf "# See \"avr-gcc --help\" for more information on switches\n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "CC = avr-gcc\n" >> Makefile
printf "OBJCOPY = avr-objcopy\n" >> Makefile
printf "OBJDUMP = avr-objdump\n" >> Makefile
printf "OPT = 3\n" >> Makefile
printf "\n" >> Makefile
printf "#C flags\n" >> Makefile
printf "CFLAGS = -g\n" >> Makefile
printf "CFLAGS += -DF_CPU=\$(MCU_FREQ)\n" >> Makefile
printf "CFLAGS += -O\$(OPT)\n" >> Makefile
printf "CFLAGS += -Wall\n" >> Makefile
printf "CFLAGS += -Werror\n" >> Makefile
printf "CFLAGS += -Wextra\n" >> Makefile
printf "CFLAGS += \$(SOURCE)\n" >> Makefile
printf "CFLAGS += -mmcu=\$(MCU)\n" >> Makefile
printf "CFLAGS += -o \$(ELF_FILE)\n" >> Makefile
printf "\n" >> Makefile
printf "#Assembly flags\n" >> Makefile
printf "ASMFLAGS = -g\n" >> Makefile
printf "ASMFLAGS += -DF_CPU=\$(MCU_FREQ) \n" >> Makefile
printf "ASMFLAGS += -Wall\n" >> Makefile
printf "ASMFLAGS += -Werror\n" >> Makefile
printf "ASMFLAGS += -Wextra\n" >> Makefile
printf "ASMFLAGS += -x assembler-with-cpp\n" >> Makefile
printf "ASMFLAGS += \$(SOURCE)\n" >> Makefile
printf "ASMFLAGS += -mmcu=\$(MCU)\n" >> Makefile
printf "ASMFLAGS += -o \$(ELF_FILE)\n" >> Makefile
printf "\n" >> Makefile
printf "#Linker Flags\n" >> Makefile
printf "LDFLAGS = -Wl,-Map,\$(MAP_FILE)\n" >> Makefile
printf "\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "#\n" >> Makefile
printf "# TARGET DEFINITIONS\n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "# Define phony targets (Always run)\n" >> Makefile
printf ".PHONY: basic all elf listings hex bin srec program_all program_eeprom program_flash program_fuses clean\n" >> Makefile
printf "\n" >> Makefile
printf "\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "#\n" >> Makefile
printf "# Build types\n" >> Makefile
printf "#						\n" >> Makefile
printf "# basic:									Only creates hex files\n" >> Makefile
printf "# all:										Create hex,bin and srec files\n" >> Makefile
printf "basic: elf hex listings\n" >> Makefile
printf "all: elf hex bin srec listings\n" >> Makefile
printf "\n" >> Makefile
printf "\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "#\n" >> Makefile
printf "# File format output targets\n" >> Makefile
printf "#\n" >> Makefile
printf "# elf:										ELF file format\n" >> Makefile
printf "# hex:										INTEL HEX file format\n" >> Makefile
printf "# bin:										BINARY file format\n" >> Makefile
printf "# srec:										MOTOROLA S-record file format\n" >> Makefile
printf "#\n" >> Makefile
printf "# AVRDUDE 6.1 above should be able to read all file formats\n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "elf:\n" >> Makefile
printf "ifeq (\"\$(suffix \$(SOURCE))\", \"\$(filter %%.c %%.cs %%.cpp, \$(suffix \$(SOURCE)))\")\n" >> Makefile
printf "	\$(info Generating elf file...)\n" >> Makefile
printf "	@\$(CC) \$(LDFLAGS) \$(CFLAGS)\n" >> Makefile
printf "else ifeq (\"\$(suffix \$(SOURCE))\", \"\$(filter %%.asm %%.S %%.as, \$(suffix \$(SOURCE)))\")\n" >> Makefile
printf "	\$(info Generating elf file...)\n" >> Makefile
printf "	@\$(CC) \$(LDFLAGS) \$(ASMFLAGS)\n" >> Makefile
printf "else \n" >> Makefile
printf "	@\$(error \"Invalid Source File\" )\n" >> Makefile
printf "endif\n" >> Makefile
printf "\n" >> Makefile
printf "hex: elf\n" >> Makefile
printf "	\$(info Generating hex files...)\n" >> Makefile
printf "	@\$(OBJCOPY) -j .text -j .data -O ihex \$(ELF_FILE) \$(FLASH_FILE)\n" >> Makefile
printf "	\$(info Generating Flash hex)\n" >> Makefile
printf "	@\$(OBJCOPY) -j .eeprom --set-section-flags=.eeprom=\"alloc,load\" --change-section-lma .eeprom=0 -O ihex \$(ELF_FILE) \$(EEPROM_FILE)\n" >> Makefile
printf "	\$(info Generating EEPROM hex)\n" >> Makefile
printf "	@\$(OBJCOPY) -j .fuse --set-section-flags=.fuse=\"alloc,load\" --change-section-lma .fuse=0 -O ihex \$(ELF_FILE) \$(FUSES_FILE) \n" >> Makefile
printf "	@srec_cat \$(FUSES_FILE) -Intel -crop 0x00 0x01 -offset  0x00 -O \$(LFUSE_FILE) -Intel\n" >> Makefile
printf "	@srec_cat \$(FUSES_FILE) -Intel -crop 0x01 0x02 -offset -0x01 -O \$(HFUSE_FILE) -Intel\n" >> Makefile
printf "	@srec_cat \$(FUSES_FILE) -Intel -crop 0x02 0x03 -offset -0x02 -O \$(EFUSE_FILE) -Intel\n" >> Makefile
printf "	\$(info Generating FUSES hex)\n" >> Makefile
printf "\n" >> Makefile
printf "bin:\n" >> Makefile
printf "	\$(info Generating bin files...)\n" >> Makefile
printf "	@\$(OBJCOPY) -j .text -j .data -O binary \$(ELF_FILE) \$(BFLASH_FILE)\n" >> Makefile
printf "	\$(info Generating Flash hex)\n" >> Makefile
printf "	@\$(OBJCOPY) -j .eeprom --set-section-flags=.eeprom=\"alloc,load\" --change-section-lma .eeprom=0 -O binary \$(ELF_FILE) \$(BEEPROM_FILE)\n" >> Makefile
printf "	\$(info Generating EEPROM hex)\n" >> Makefile
printf "	@\$(OBJCOPY) -j .fuse --set-section-flags=.fuse=\"alloc,load\" --change-section-lma .fuse=0 -O binary \$(ELF_FILE) \$(BFUSES_FILE) \n" >> Makefile
printf "	@srec_cat \$(BFUSES_FILE) -Binary -crop 0x00 0x01 -offset  0x00 -O \$(BLFUSE_FILE) -Binary\n" >> Makefile
printf "	@srec_cat \$(BFUSES_FILE) -Binary -crop 0x01 0x02 -offset -0x01 -O \$(BHFUSE_FILE) -Binary\n" >> Makefile
printf "	@srec_cat \$(BFUSES_FILE) -Binary -crop 0x02 0x03 -offset -0x02 -O \$(BEFUSE_FILE) -Binary\n" >> Makefile
printf "	\$(info Generating FUSES hex)\n" >> Makefile
printf "\n" >> Makefile
printf "srec:\n" >> Makefile
printf "	\$(info Generating srec files...)\n" >> Makefile
printf "	@\$(OBJCOPY) -j .text -j .data -O srec \$(ELF_FILE) \$(SFLASH_FILE)\n" >> Makefile
printf "	\$(info Generating Flash hex)\n" >> Makefile
printf "	@\$(OBJCOPY) -j .eeprom --set-section-flags=.eeprom=\"alloc,load\" --change-section-lma .eeprom=0 -O srec \$(ELF_FILE) \$(SEEPROM_FILE)\n" >> Makefile
printf "	\$(info Generating EEPROM hex)\n" >> Makefile
printf "	@\$(OBJCOPY) -j .fuse --set-section-flags=.fuse=\"alloc,load\" --change-section-lma .fuse=0 -O srec \$(ELF_FILE) \$(SFUSES_FILE) \n" >> Makefile
printf "	@srec_cat \$(SFUSES_FILE) -Motorola -crop 0x00 0x01 -offset  0x00 -O \$(SLFUSE_FILE) -Motorola\n" >> Makefile
printf "	@srec_cat \$(SFUSES_FILE) -Motorola -crop 0x01 0x02 -offset -0x01 -O \$(SHFUSE_FILE) -Motorola\n" >> Makefile
printf "	@srec_cat \$(SFUSES_FILE) -Motorola -crop 0x02 0x03 -offset -0x02 -O \$(SEFUSE_FILE) -Motorola	\n" >> Makefile
printf "	\$(info Generating FUSES hex)\n" >> Makefile
printf "\n" >> Makefile
printf "	\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "#\n" >> Makefile
printf "# Listings targets\n" >> Makefile
printf "#\n" >> Makefile
printf "# Creates listing files\n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "listings: elf\n" >> Makefile
printf "	\$(info Generating lst file...)\n" >> Makefile
printf "	@\$(OBJDUMP) -h -S -D \$(ELF_FILE) > \$(LST_FILE)\n" >> Makefile
printf "\n" >> Makefile
printf "###############################################################################	\n" >> Makefile
printf "#\n" >> Makefile
printf "# Programming targets\n" >> Makefile
printf "# \n" >> Makefile
printf "# program_all:						Programs flash,eeprom and fuses. Basically everything\n" >> Makefile
printf "# program_flash:					Programs flash only\n" >> Makefile
printf "# program_eeprom:					Programs eeprom only\n" >> Makefile
printf "# program_fuses:					Program fuses only\n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "program_all: program_flash program_eeprom program_fuses\n" >> Makefile
printf "\n" >> Makefile
printf "program_flash: hex\n" >> Makefile
printf "	@\"\$(AVRDUDE_GENERAL_COMMAND)\" -U flash:w:\$(FLASH_FILE)\n" >> Makefile
printf "\n" >> Makefile
printf "program_eeprom: hex\n" >> Makefile
printf "	@\"\$(AVRDUDE_GENERAL_COMMAND)\" -U eeprom:w:\$(EEPROM_FILE)\n" >> Makefile
printf "\n" >> Makefile
printf "program_fuses: hex\n" >> Makefile
printf "	@\"\$(AVRDUDE_GENERAL_COMMAND)\" -U lfuse:w:\$(LFUSE_FILE)\n" >> Makefile
printf "	@\"\$(AVRDUDE_GENERAL_COMMAND)\" -U hfuse:w:\$(HFUSE_FILE)\n" >> Makefile
printf "	@\"\$(AVRDUDE_GENERAL_COMMAND)\" -U efuse:w:\$(EFUSE_FILE)\n" >> Makefile
printf "\n" >> Makefile
printf "\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "#\n" >> Makefile
printf "# Cleanup targets\n" >> Makefile
printf "#\n" >> Makefile
printf "# Cleans all those files :c\n" >> Makefile
printf "#\n" >> Makefile
printf "###############################################################################\n" >> Makefile
printf "clean:\n" >> Makefile
printf "	\$(info Cleaning up :3)\n" >> Makefile
printf "	@rm -rf \$(ELF_FILE) \$(MAP_FILE) \$(LST_FILE) \$(FLASH_FILE) \$(EEPROM_FILE) \$(FUSES_FILE) \$(LFUSE_FILE) \$(HFUSE_FILE) \$(EFUSE_FILE) \$(BFLASH_FILE) \$(BEEPROM_FILE) \$(BFUSES_FILE) \$(BLFUSE_FILE) \$(BHFUSE_FILE) \$(BEFUSE_FILE) \$(SFLASH_FILE) \$(SEEPROM_FILE) \$(SFUSES_FILE) \$(SLFUSE_FILE) \$(SHFUSE_FILE) \$(SEFUSE_FILE)\n" >> Makefile
printf "###############################################################################\n" >> Makefile

echo 
echo "Done! If you did something wrong or want to change more specific things go ahead and edit the file! :D"
sleep 1s
