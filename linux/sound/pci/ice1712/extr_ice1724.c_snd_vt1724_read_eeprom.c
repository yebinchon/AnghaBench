
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_ice1712_card_info {unsigned int subvendor; int eeprom_size; int eeprom_data; scalar_t__ name; scalar_t__ model; } ;
struct TYPE_4__ {int subvendor; int version; int size; int* data; void* gpiodir; void* gpiostate; void* gpiomask; } ;
struct snd_ice1712 {int pm_suspend_enabled; TYPE_2__ eeprom; TYPE_1__* card; struct snd_ice1712_card_info* card_info; int pci; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int ENXIO ;
 int I2C_CTRL ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int ICE_EEP2_GPIO_DIR ;
 int ICE_EEP2_GPIO_MASK ;
 int ICE_EEP2_GPIO_STATE ;
 int PCI_SUBSYSTEM_ID ;
 int PCI_SUBSYSTEM_VENDOR_ID ;
 int VT1724_I2C_EEPROM ;
 struct snd_ice1712_card_info** card_tables ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,scalar_t__) ;
 int dev_warn (int ,char*,unsigned int) ;
 void* eeprom_triple (struct snd_ice1712*,int ) ;
 int inb (int ) ;
 int memcpy (int*,int ,int) ;
 int pci_read_config_word (int ,int ,int *) ;
 int snd_vt1724_read_i2c (struct snd_ice1712*,int const,unsigned int) ;
 int strcmp (char const*,scalar_t__) ;
 unsigned int swab16 (int ) ;

__attribute__((used)) static int snd_vt1724_read_eeprom(struct snd_ice1712 *ice,
      const char *modelname)
{
 const int dev = 0xa0;
 unsigned int i, size;
 struct snd_ice1712_card_info * const *tbl, *c;

 if (!modelname || !*modelname) {
  ice->eeprom.subvendor = 0;
  if ((inb(ICEREG1724(ice, I2C_CTRL)) & VT1724_I2C_EEPROM) != 0)
   ice->eeprom.subvendor =
    (snd_vt1724_read_i2c(ice, dev, 0x00) << 0) |
    (snd_vt1724_read_i2c(ice, dev, 0x01) << 8) |
    (snd_vt1724_read_i2c(ice, dev, 0x02) << 16) |
    (snd_vt1724_read_i2c(ice, dev, 0x03) << 24);
  if (ice->eeprom.subvendor == 0 ||
      ice->eeprom.subvendor == (unsigned int)-1) {



   u16 vendor, device;
   pci_read_config_word(ice->pci, PCI_SUBSYSTEM_VENDOR_ID,
          &vendor);
   pci_read_config_word(ice->pci, PCI_SUBSYSTEM_ID, &device);
   ice->eeprom.subvendor =
    ((unsigned int)swab16(vendor) << 16) | swab16(device);
   if (ice->eeprom.subvendor == 0 ||
       ice->eeprom.subvendor == (unsigned int)-1) {
    dev_err(ice->card->dev,
     "No valid ID is found\n");
    return -ENXIO;
   }
  }
 }
 for (tbl = card_tables; *tbl; tbl++) {
  for (c = *tbl; c->name; c++) {
   if (modelname && c->model &&
       !strcmp(modelname, c->model)) {
    dev_info(ice->card->dev,
      "Using board model %s\n",
           c->name);
    ice->eeprom.subvendor = c->subvendor;
   } else if (c->subvendor != ice->eeprom.subvendor)
    continue;
   ice->card_info = c;
   if (!c->eeprom_size || !c->eeprom_data)
    goto found;

   dev_dbg(ice->card->dev, "using the defined eeprom..\n");
   ice->eeprom.version = 2;
   ice->eeprom.size = c->eeprom_size + 6;
   memcpy(ice->eeprom.data, c->eeprom_data, c->eeprom_size);
   goto read_skipped;
  }
 }
 dev_warn(ice->card->dev, "No matching model found for ID 0x%x\n",
        ice->eeprom.subvendor);





 found:
 ice->eeprom.size = snd_vt1724_read_i2c(ice, dev, 0x04);
 if (ice->eeprom.size < 6)
  ice->eeprom.size = 32;
 else if (ice->eeprom.size > 32) {
  dev_err(ice->card->dev, "Invalid EEPROM (size = %i)\n",
         ice->eeprom.size);
  return -EIO;
 }
 ice->eeprom.version = snd_vt1724_read_i2c(ice, dev, 0x05);
 if (ice->eeprom.version != 1 && ice->eeprom.version != 2)
  dev_warn(ice->card->dev, "Invalid EEPROM version %i\n",
         ice->eeprom.version);
 size = ice->eeprom.size - 6;
 for (i = 0; i < size; i++)
  ice->eeprom.data[i] = snd_vt1724_read_i2c(ice, dev, i + 6);

 read_skipped:
 ice->eeprom.gpiomask = eeprom_triple(ice, ICE_EEP2_GPIO_MASK);
 ice->eeprom.gpiostate = eeprom_triple(ice, ICE_EEP2_GPIO_STATE);
 ice->eeprom.gpiodir = eeprom_triple(ice, ICE_EEP2_GPIO_DIR);

 return 0;
}
