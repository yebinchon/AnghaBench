
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx {scalar_t__ irq; unsigned int num_devs; scalar_t__ chip_type; int pci; int old_legacy_cfg; int old_legacy; int mpu_res; int * devs; } ;


 scalar_t__ TYPE_VIA686 ;
 int VIA_FUNC_ENABLE ;
 int VIA_PNP_CONTROL ;
 int free_irq (scalar_t__,struct via82xx*) ;
 int kfree (struct via82xx*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int pci_write_config_byte (int ,int ,int ) ;
 int release_and_free_resource (int ) ;
 int snd_via686_free_gameport (struct via82xx*) ;
 int snd_via82xx_channel_reset (struct via82xx*,int *) ;

__attribute__((used)) static int snd_via82xx_free(struct via82xx *chip)
{
 unsigned int i;

 if (chip->irq < 0)
  goto __end_hw;

 for (i = 0; i < chip->num_devs; i++)
  snd_via82xx_channel_reset(chip, &chip->devs[i]);

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 __end_hw:
 release_and_free_resource(chip->mpu_res);
 pci_release_regions(chip->pci);

 if (chip->chip_type == TYPE_VIA686) {
  snd_via686_free_gameport(chip);
  pci_write_config_byte(chip->pci, VIA_FUNC_ENABLE, chip->old_legacy);
  pci_write_config_byte(chip->pci, VIA_PNP_CONTROL, chip->old_legacy_cfg);
 }
 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
