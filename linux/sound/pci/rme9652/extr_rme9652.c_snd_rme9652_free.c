
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {scalar_t__ irq; int pci; scalar_t__ port; int iobase; } ;


 int free_irq (scalar_t__,void*) ;
 int iounmap (int ) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int rme9652_stop (struct snd_rme9652*) ;
 int snd_rme9652_free_buffers (struct snd_rme9652*) ;

__attribute__((used)) static int snd_rme9652_free(struct snd_rme9652 *rme9652)
{
 if (rme9652->irq >= 0)
  rme9652_stop(rme9652);
 snd_rme9652_free_buffers(rme9652);

 if (rme9652->irq >= 0)
  free_irq(rme9652->irq, (void *)rme9652);
 iounmap(rme9652->iobase);
 if (rme9652->port)
  pci_release_regions(rme9652->pci);

 pci_disable_device(rme9652->pci);
 return 0;
}
