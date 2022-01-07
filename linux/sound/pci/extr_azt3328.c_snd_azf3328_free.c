
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_azf3328 {scalar_t__ irq; int pci; int timer; } ;


 int free_irq (scalar_t__,struct snd_azf3328*) ;
 int kfree (struct snd_azf3328*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_azf3328_gameport_free (struct snd_azf3328*) ;
 int snd_azf3328_mixer_reset (struct snd_azf3328*) ;
 int snd_azf3328_timer_stop (int ) ;

__attribute__((used)) static int
snd_azf3328_free(struct snd_azf3328 *chip)
{
 if (chip->irq < 0)
  goto __end_hw;

 snd_azf3328_mixer_reset(chip);

 snd_azf3328_timer_stop(chip->timer);
 snd_azf3328_gameport_free(chip);

__end_hw:
 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);

 kfree(chip);
 return 0;
}
