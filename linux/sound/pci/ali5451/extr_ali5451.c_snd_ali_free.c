
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {scalar_t__ irq; int pci_m7101; int pci_m1533; struct snd_ali* image; int pci; scalar_t__ port; scalar_t__ hw_initialized; } ;


 int free_irq (scalar_t__,struct snd_ali*) ;
 int kfree (struct snd_ali*) ;
 int pci_dev_put (int ) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_ali_disable_address_interrupt (struct snd_ali*) ;

__attribute__((used)) static int snd_ali_free(struct snd_ali * codec)
{
 if (codec->hw_initialized)
  snd_ali_disable_address_interrupt(codec);
 if (codec->irq >= 0)
  free_irq(codec->irq, codec);
 if (codec->port)
  pci_release_regions(codec->pci);
 pci_disable_device(codec->pci);



 pci_dev_put(codec->pci_m1533);
 pci_dev_put(codec->pci_m7101);
 kfree(codec);
 return 0;
}
