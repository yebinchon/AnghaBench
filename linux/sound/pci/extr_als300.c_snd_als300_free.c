
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_als300 {scalar_t__ irq; int pci; } ;


 int IRQ_DISABLE ;
 int free_irq (scalar_t__,struct snd_als300*) ;
 int kfree (struct snd_als300*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_als300_set_irq_flag (struct snd_als300*,int ) ;

__attribute__((used)) static int snd_als300_free(struct snd_als300 *chip)
{
 snd_als300_set_irq_flag(chip, IRQ_DISABLE);
 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
