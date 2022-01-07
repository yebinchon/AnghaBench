
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dma_buffer {scalar_t__ area; } ;
struct pci_dev {int dummy; } ;


 int snd_dma_free_pages (struct snd_dma_buffer*) ;

__attribute__((used)) static void snd_hammerfall_free_buffer(struct snd_dma_buffer *dmab, struct pci_dev *pci)
{
 if (dmab->area)
  snd_dma_free_pages(dmab);
}
