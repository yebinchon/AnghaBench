
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs5535audio {scalar_t__ irq; int pci; } ;


 int PCI_D3hot ;
 int free_irq (scalar_t__,struct cs5535audio*) ;
 int kfree (struct cs5535audio*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int pci_set_power_state (int ,int ) ;
 int synchronize_irq (scalar_t__) ;

__attribute__((used)) static int snd_cs5535audio_free(struct cs5535audio *cs5535au)
{
 synchronize_irq(cs5535au->irq);
 pci_set_power_state(cs5535au->pci, PCI_D3hot);

 if (cs5535au->irq >= 0)
  free_irq(cs5535au->irq, cs5535au);

 pci_release_regions(cs5535au->pci);
 pci_disable_device(cs5535au->pci);
 kfree(cs5535au);
 return 0;
}
