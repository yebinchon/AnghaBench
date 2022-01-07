
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1 {int ** page_ptr_table; scalar_t__* page_addr_table; scalar_t__ iommu_workaround; int pci; } ;
struct TYPE_2__ {int dev; int type; } ;
struct snd_dma_buffer {int bytes; scalar_t__ addr; int * area; TYPE_1__ dev; } ;


 int PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 int snd_dma_free_pages (struct snd_dma_buffer*) ;
 int snd_dma_pci_data (int ) ;

__attribute__((used)) static void __synth_free_pages(struct snd_emu10k1 *emu, int first_page,
          int last_page)
{
 struct snd_dma_buffer dmab;
 int page;

 dmab.dev.type = SNDRV_DMA_TYPE_DEV;
 dmab.dev.dev = snd_dma_pci_data(emu->pci);

 for (page = first_page; page <= last_page; page++) {
  if (emu->page_ptr_table[page] == ((void*)0))
   continue;
  dmab.area = emu->page_ptr_table[page];
  dmab.addr = emu->page_addr_table[page];





  dmab.bytes = PAGE_SIZE;
  if (emu->iommu_workaround)
   dmab.bytes *= 2;

  snd_dma_free_pages(&dmab);
  emu->page_addr_table[page] = 0;
  emu->page_ptr_table[page] = ((void*)0);
 }
}
