
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {int irq; int pci; scalar_t__ port; int * iobase; } ;


 int free_irq (int,void*) ;
 int iounmap (int *) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_rme32_pcm_stop (struct rme32*,int ) ;

__attribute__((used)) static void snd_rme32_free(void *private_data)
{
 struct rme32 *rme32 = (struct rme32 *) private_data;

 if (rme32 == ((void*)0)) {
  return;
 }
 if (rme32->irq >= 0) {
  snd_rme32_pcm_stop(rme32, 0);
  free_irq(rme32->irq, (void *) rme32);
  rme32->irq = -1;
 }
 if (rme32->iobase) {
  iounmap(rme32->iobase);
  rme32->iobase = ((void*)0);
 }
 if (rme32->port) {
  pci_release_regions(rme32->pci);
  rme32->port = 0;
 }
 pci_disable_device(rme32->pci);
}
