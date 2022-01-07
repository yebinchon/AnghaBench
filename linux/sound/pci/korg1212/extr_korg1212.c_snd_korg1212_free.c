
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * area; } ;
struct snd_korg1212 {scalar_t__ irq; int pci; TYPE_1__ dma_shared; TYPE_1__ dma_rec; TYPE_1__ dma_play; TYPE_1__ dma_dsp; int * iobase; } ;


 int free_irq (scalar_t__,struct snd_korg1212*) ;
 int iounmap (int *) ;
 int kfree (struct snd_korg1212*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_dma_free_pages (TYPE_1__*) ;
 int snd_korg1212_DisableCardInterrupts (struct snd_korg1212*) ;
 int snd_korg1212_TurnOffIdleMonitor (struct snd_korg1212*) ;

__attribute__((used)) static int
snd_korg1212_free(struct snd_korg1212 *korg1212)
{
        snd_korg1212_TurnOffIdleMonitor(korg1212);

        if (korg1212->irq >= 0) {
                snd_korg1212_DisableCardInterrupts(korg1212);
                free_irq(korg1212->irq, korg1212);
                korg1212->irq = -1;
        }

        if (korg1212->iobase != ((void*)0)) {
                iounmap(korg1212->iobase);
                korg1212->iobase = ((void*)0);
        }

 pci_release_regions(korg1212->pci);




        if (korg1212->dma_dsp.area) {
         snd_dma_free_pages(&korg1212->dma_dsp);
         korg1212->dma_dsp.area = ((void*)0);
        }






 if (korg1212->dma_play.area) {
  snd_dma_free_pages(&korg1212->dma_play);
  korg1212->dma_play.area = ((void*)0);
        }

 if (korg1212->dma_rec.area) {
  snd_dma_free_pages(&korg1212->dma_rec);
  korg1212->dma_rec.area = ((void*)0);
        }






 if (korg1212->dma_shared.area) {
  snd_dma_free_pages(&korg1212->dma_shared);
  korg1212->dma_shared.area = ((void*)0);
        }

 pci_disable_device(korg1212->pci);
        kfree(korg1212);
        return 0;
}
