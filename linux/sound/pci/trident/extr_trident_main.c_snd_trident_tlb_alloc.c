
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_trident_memblk_arg {int dummy; } ;
struct TYPE_8__ {unsigned long addr; scalar_t__ area; } ;
struct TYPE_6__ {unsigned long* shadow_entries; TYPE_3__* memhdr; TYPE_4__ silent_page; int * entries; TYPE_4__ buffer; scalar_t__ entries_dmaaddr; } ;
struct snd_trident {TYPE_2__ tlb; TYPE_1__* card; int pci; } ;
typedef int __le32 ;
struct TYPE_7__ {int block_extra_size; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ ALIGN (unsigned long,int) ;
 int ENOMEM ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_TRIDENT_MAX_PAGES ;
 int SNDRV_TRIDENT_PAGE_SIZE ;
 int array_size (int,int) ;
 int cpu_to_le32 (int) ;
 int dev_err (int ,char*) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,int,TYPE_4__*) ;
 int snd_dma_pci_data (int ) ;
 TYPE_3__* snd_util_memhdr_new (int) ;
 unsigned long* vmalloc (int ) ;

__attribute__((used)) static int snd_trident_tlb_alloc(struct snd_trident *trident)
{
 int i;




 if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(trident->pci),
    2 * SNDRV_TRIDENT_MAX_PAGES * 4, &trident->tlb.buffer) < 0) {
  dev_err(trident->card->dev, "unable to allocate TLB buffer\n");
  return -ENOMEM;
 }
 trident->tlb.entries = (__le32 *)ALIGN((unsigned long)trident->tlb.buffer.area, SNDRV_TRIDENT_MAX_PAGES * 4);
 trident->tlb.entries_dmaaddr = ALIGN(trident->tlb.buffer.addr, SNDRV_TRIDENT_MAX_PAGES * 4);

 trident->tlb.shadow_entries =
  vmalloc(array_size(SNDRV_TRIDENT_MAX_PAGES,
       sizeof(unsigned long)));
 if (!trident->tlb.shadow_entries)
  return -ENOMEM;


 if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(trident->pci),
    SNDRV_TRIDENT_PAGE_SIZE, &trident->tlb.silent_page) < 0) {
  dev_err(trident->card->dev, "unable to allocate silent page\n");
  return -ENOMEM;
 }
 memset(trident->tlb.silent_page.area, 0, SNDRV_TRIDENT_PAGE_SIZE);
 for (i = 0; i < SNDRV_TRIDENT_MAX_PAGES; i++) {
  trident->tlb.entries[i] = cpu_to_le32(trident->tlb.silent_page.addr & ~(SNDRV_TRIDENT_PAGE_SIZE-1));
  trident->tlb.shadow_entries[i] = (unsigned long)trident->tlb.silent_page.area;
 }


 trident->tlb.memhdr = snd_util_memhdr_new(SNDRV_TRIDENT_PAGE_SIZE * SNDRV_TRIDENT_MAX_PAGES);
 if (trident->tlb.memhdr == ((void*)0))
  return -ENOMEM;

 trident->tlb.memhdr->block_extra_size = sizeof(struct snd_trident_memblk_arg);
 return 0;
}
