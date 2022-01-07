
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1968 {scalar_t__ irq; int pci; int v4l2_dev; int tea; scalar_t__ io_port; scalar_t__ input_dev; int hwvol_work; } ;


 scalar_t__ ESM_PORT_HOST_IRQ ;
 int cancel_work_sync (int *) ;
 int free_irq (scalar_t__,struct es1968*) ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct es1968*) ;
 int outw (int,scalar_t__) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_es1968_free_gameport (struct es1968*) ;
 int snd_tea575x_exit (int *) ;
 int synchronize_irq (scalar_t__) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int snd_es1968_free(struct es1968 *chip)
{
 cancel_work_sync(&chip->hwvol_work);





 if (chip->io_port) {
  if (chip->irq >= 0)
   synchronize_irq(chip->irq);
  outw(1, chip->io_port + 0x04);
  outw(0, chip->io_port + ESM_PORT_HOST_IRQ);
 }






 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 snd_es1968_free_gameport(chip);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
