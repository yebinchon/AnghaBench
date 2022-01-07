
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_device_id {int subdevice; int subvendor; } ;
struct oxygen {TYPE_1__* card; int pci; } ;
struct TYPE_2__ {int dev; } ;


 int OXYGEN_EEPROM_ID ;
 int OXYGEN_MISC ;
 int OXYGEN_MISC_WRITE_PCI_SUBID ;
 int PCI_SUBSYSTEM_ID ;
 int PCI_SUBSYSTEM_VENDOR_ID ;
 int dev_info (int ,char*) ;
 int oxygen_clear_bits8 (struct oxygen*,int ,int ) ;
 int oxygen_read_eeprom (struct oxygen*,int ) ;
 int oxygen_set_bits8 (struct oxygen*,int ,int ) ;
 int oxygen_write_eeprom (struct oxygen*,int,int) ;
 int pci_write_config_word (int ,int ,int) ;

__attribute__((used)) static void oxygen_restore_eeprom(struct oxygen *chip,
      const struct pci_device_id *id)
{
 u16 eeprom_id;

 eeprom_id = oxygen_read_eeprom(chip, 0);
 if (eeprom_id != OXYGEN_EEPROM_ID &&
     (eeprom_id != 0xffff || id->subdevice != 0x8788)) {
  oxygen_write_eeprom(chip, 1, id->subvendor);
  oxygen_write_eeprom(chip, 0, OXYGEN_EEPROM_ID);

  oxygen_set_bits8(chip, OXYGEN_MISC,
     OXYGEN_MISC_WRITE_PCI_SUBID);
  pci_write_config_word(chip->pci, PCI_SUBSYSTEM_VENDOR_ID,
          id->subvendor);
  pci_write_config_word(chip->pci, PCI_SUBSYSTEM_ID,
          id->subdevice);
  oxygen_clear_bits8(chip, OXYGEN_MISC,
       OXYGEN_MISC_WRITE_PCI_SUBID);

  dev_info(chip->card->dev, "EEPROM ID restored\n");
 }
}
