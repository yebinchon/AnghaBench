
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {scalar_t__ irq; struct snd_ice1712* spec; int pci; int port; } ;


 int DMA_INT_MASK ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int IRQMASK ;
 int free_irq (scalar_t__,struct snd_ice1712*) ;
 int kfree (struct snd_ice1712*) ;
 int outb (int,int ) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_ice1712_akm4xxx_free (struct snd_ice1712*) ;

__attribute__((used)) static int snd_vt1724_free(struct snd_ice1712 *ice)
{
 if (!ice->port)
  goto __hw_end;

 outb(0xff, ICEMT1724(ice, DMA_INT_MASK));
 outb(0xff, ICEREG1724(ice, IRQMASK));

__hw_end:
 if (ice->irq >= 0)
  free_irq(ice->irq, ice);
 pci_release_regions(ice->pci);
 snd_ice1712_akm4xxx_free(ice);
 pci_disable_device(ice->pci);
 kfree(ice->spec);
 kfree(ice);
 return 0;
}
