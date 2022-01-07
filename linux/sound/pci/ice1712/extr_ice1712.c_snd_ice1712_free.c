
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {scalar_t__ irq; struct snd_ice1712* spec; int pci; scalar_t__ port; } ;


 int ICE1712_MULTI_CAPTURE ;
 int ICE1712_MULTI_PLAYBACK ;
 int ICEMT (struct snd_ice1712*,int ) ;
 int ICEREG (struct snd_ice1712*,int ) ;
 int IRQ ;
 int IRQMASK ;
 int free_irq (scalar_t__,struct snd_ice1712*) ;
 int kfree (struct snd_ice1712*) ;
 int outb (int,int ) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_ice1712_akm4xxx_free (struct snd_ice1712*) ;

__attribute__((used)) static int snd_ice1712_free(struct snd_ice1712 *ice)
{
 if (!ice->port)
  goto __hw_end;

 outb(ICE1712_MULTI_CAPTURE | ICE1712_MULTI_PLAYBACK, ICEMT(ice, IRQ));
 outb(0xff, ICEREG(ice, IRQMASK));

__hw_end:
 if (ice->irq >= 0)
  free_irq(ice->irq, ice);

 if (ice->port)
  pci_release_regions(ice->pci);
 snd_ice1712_akm4xxx_free(ice);
 pci_disable_device(ice->pci);
 kfree(ice->spec);
 kfree(ice);
 return 0;
}
