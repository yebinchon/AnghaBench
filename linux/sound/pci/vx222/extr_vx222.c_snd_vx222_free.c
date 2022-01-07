
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {scalar_t__ irq; } ;
struct snd_vx222 {int pci; scalar_t__* port; } ;


 int free_irq (scalar_t__,void*) ;
 int kfree (struct vx_core*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 struct snd_vx222* to_vx222 (struct vx_core*) ;

__attribute__((used)) static int snd_vx222_free(struct vx_core *chip)
{
 struct snd_vx222 *vx = to_vx222(chip);

 if (chip->irq >= 0)
  free_irq(chip->irq, (void*)chip);
 if (vx->port[0])
  pci_release_regions(vx->pci);
 pci_disable_device(vx->pci);
 kfree(chip);
 return 0;
}
