
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx_modem {scalar_t__ irq; unsigned int num_devs; int pci; int * devs; } ;


 int free_irq (scalar_t__,struct via82xx_modem*) ;
 int kfree (struct via82xx_modem*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_via82xx_channel_reset (struct via82xx_modem*,int *) ;

__attribute__((used)) static int snd_via82xx_free(struct via82xx_modem *chip)
{
 unsigned int i;

 if (chip->irq < 0)
  goto __end_hw;

 for (i = 0; i < chip->num_devs; i++)
  snd_via82xx_channel_reset(chip, &chip->devs[i]);

      __end_hw:
 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
