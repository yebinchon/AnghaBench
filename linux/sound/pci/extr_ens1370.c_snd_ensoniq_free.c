
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ area; } ;
struct ensoniq {scalar_t__ irq; int pci; TYPE_1__ dma_bug; } ;


 int CONTROL ;
 int ES_1370_SERR_DISABLE ;
 int ES_REG (struct ensoniq*,int ) ;
 int PCI_D3hot ;
 int SERIAL ;
 int free_irq (scalar_t__,struct ensoniq*) ;
 int kfree (struct ensoniq*) ;
 int outl (int ,int ) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int pci_set_power_state (int ,int ) ;
 int snd_dma_free_pages (TYPE_1__*) ;
 int snd_ensoniq_free_gameport (struct ensoniq*) ;
 int synchronize_irq (scalar_t__) ;

__attribute__((used)) static int snd_ensoniq_free(struct ensoniq *ensoniq)
{
 snd_ensoniq_free_gameport(ensoniq);
 if (ensoniq->irq < 0)
  goto __hw_end;




 outl(0, ES_REG(ensoniq, CONTROL));
 outl(0, ES_REG(ensoniq, SERIAL));

 if (ensoniq->irq >= 0)
  synchronize_irq(ensoniq->irq);
 pci_set_power_state(ensoniq->pci, PCI_D3hot);
      __hw_end:




 if (ensoniq->irq >= 0)
  free_irq(ensoniq->irq, ensoniq);
 pci_release_regions(ensoniq->pci);
 pci_disable_device(ensoniq->pci);
 kfree(ensoniq);
 return 0;
}
