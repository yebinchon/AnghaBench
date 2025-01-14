
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_util_memhdr {int block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; scalar_t__ period_size; scalar_t__ buffer_size; } ;
struct snd_emu10k1_memblk {int first_page; int last_page; int map_locked; } ;
struct TYPE_3__ {int addr; } ;
struct snd_emu10k1 {int delay_pcm_irq; int ** page_ptr_table; int * page_addr_table; TYPE_2__* card; TYPE_1__ silent_page; struct snd_util_memhdr* memhdr; scalar_t__ address_mode; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int EMUPAGESIZE ;
 int MAXPAGES0 ;
 int MAXPAGES1 ;
 int PAGE_SHIFT ;
 int __snd_util_mem_free (struct snd_util_memhdr*,struct snd_util_memblk*) ;
 int dev_err_ratelimited (int ,char*,int) ;
 int is_valid_page (struct snd_emu10k1*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_emu10k1_memblk* search_empty (struct snd_emu10k1*,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emu10k1_memblk_map (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ;
 int snd_pcm_sgbuf_get_addr (struct snd_pcm_substream*,unsigned long) ;

struct snd_util_memblk *
snd_emu10k1_alloc_pages(struct snd_emu10k1 *emu, struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_util_memhdr *hdr;
 struct snd_emu10k1_memblk *blk;
 int page, err, idx;

 if (snd_BUG_ON(!emu))
  return ((void*)0);
 if (snd_BUG_ON(runtime->dma_bytes <= 0 ||
         runtime->dma_bytes >= (emu->address_mode ? MAXPAGES1 : MAXPAGES0) * EMUPAGESIZE))
  return ((void*)0);
 hdr = emu->memhdr;
 if (snd_BUG_ON(!hdr))
  return ((void*)0);

 idx = runtime->period_size >= runtime->buffer_size ?
     (emu->delay_pcm_irq * 2) : 0;
 mutex_lock(&hdr->block_mutex);
 blk = search_empty(emu, runtime->dma_bytes + idx);
 if (blk == ((void*)0)) {
  mutex_unlock(&hdr->block_mutex);
  return ((void*)0);
 }



 idx = 0;
 for (page = blk->first_page; page <= blk->last_page; page++, idx++) {
  unsigned long ofs = idx << PAGE_SHIFT;
  dma_addr_t addr;
  if (ofs >= runtime->dma_bytes)
   addr = emu->silent_page.addr;
  else
   addr = snd_pcm_sgbuf_get_addr(substream, ofs);
  if (! is_valid_page(emu, addr)) {
   dev_err_ratelimited(emu->card->dev,
    "emu: failure page = %d\n", idx);
   mutex_unlock(&hdr->block_mutex);
   return ((void*)0);
  }
  emu->page_addr_table[page] = addr;
  emu->page_ptr_table[page] = ((void*)0);
 }


 blk->map_locked = 1;
 err = snd_emu10k1_memblk_map(emu, blk);
 if (err < 0) {
  __snd_util_mem_free(hdr, (struct snd_util_memblk *)blk);
  mutex_unlock(&hdr->block_mutex);
  return ((void*)0);
 }
 mutex_unlock(&hdr->block_mutex);
 return (struct snd_util_memblk *)blk;
}
