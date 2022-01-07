
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int pci; scalar_t__ iommu_workaround; } ;
struct snd_dma_buffer {int dummy; } ;


 size_t PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 int snd_dma_alloc_pages (int ,int ,size_t,struct snd_dma_buffer*) ;
 int snd_dma_pci_data (int ) ;

int snd_emu10k1_alloc_pages_maybe_wider(struct snd_emu10k1 *emu, size_t size,
     struct snd_dma_buffer *dmab)
{
 if (emu->iommu_workaround) {
  size_t npages = (size + PAGE_SIZE - 1) / PAGE_SIZE;
  size_t size_real = npages * PAGE_SIZE;





  if (size_real < size + 1024)
   size += PAGE_SIZE;
 }

 return snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV,
       snd_dma_pci_data(emu->pci), size, dmab);
}
