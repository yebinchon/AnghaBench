
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_util_memhdr {int block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct TYPE_2__ {struct snd_util_memhdr* memhdr; } ;
struct snd_trident {TYPE_1__ tlb; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned long dma_bytes; unsigned long dma_addr; scalar_t__ dma_area; } ;
typedef unsigned long dma_addr_t ;


 unsigned long SNDRV_TRIDENT_MAX_PAGES ;
 unsigned long SNDRV_TRIDENT_PAGE_SIZE ;
 int __snd_util_mem_free (struct snd_util_memhdr*,struct snd_util_memblk*) ;
 int firstpg (struct snd_util_memblk*) ;
 int is_valid_page (unsigned long) ;
 int lastpg (struct snd_util_memblk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_util_memblk* search_empty (struct snd_util_memhdr*,unsigned long) ;
 int set_tlb_bus (struct snd_trident*,int,unsigned long,unsigned long) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static struct snd_util_memblk *
snd_trident_alloc_cont_pages(struct snd_trident *trident,
        struct snd_pcm_substream *substream)
{
 struct snd_util_memhdr *hdr;
 struct snd_util_memblk *blk;
 int page;
 struct snd_pcm_runtime *runtime = substream->runtime;
 dma_addr_t addr;
 unsigned long ptr;

 if (snd_BUG_ON(runtime->dma_bytes <= 0 ||
         runtime->dma_bytes > SNDRV_TRIDENT_MAX_PAGES *
     SNDRV_TRIDENT_PAGE_SIZE))
  return ((void*)0);
 hdr = trident->tlb.memhdr;
 if (snd_BUG_ON(!hdr))
  return ((void*)0);

 mutex_lock(&hdr->block_mutex);
 blk = search_empty(hdr, runtime->dma_bytes);
 if (blk == ((void*)0)) {
  mutex_unlock(&hdr->block_mutex);
  return ((void*)0);
 }


 addr = runtime->dma_addr;
 ptr = (unsigned long)runtime->dma_area;
 for (page = firstpg(blk); page <= lastpg(blk); page++,
      ptr += SNDRV_TRIDENT_PAGE_SIZE, addr += SNDRV_TRIDENT_PAGE_SIZE) {
  if (! is_valid_page(addr)) {
   __snd_util_mem_free(hdr, blk);
   mutex_unlock(&hdr->block_mutex);
   return ((void*)0);
  }
  set_tlb_bus(trident, page, ptr, addr);
 }
 mutex_unlock(&hdr->block_mutex);
 return blk;
}
