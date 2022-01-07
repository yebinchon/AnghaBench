
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memhdr {int block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct snd_emu10k1_memblk {scalar_t__ mapped_page; } ;
struct snd_emu10k1 {int memblk_lock; struct snd_util_memhdr* memhdr; } ;


 int __snd_util_mem_free (struct snd_util_memhdr*,struct snd_util_memblk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synth_free_pages (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ;
 int unmap_memblk (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ;

int
snd_emu10k1_synth_free(struct snd_emu10k1 *emu, struct snd_util_memblk *memblk)
{
 struct snd_util_memhdr *hdr = emu->memhdr;
 struct snd_emu10k1_memblk *blk = (struct snd_emu10k1_memblk *)memblk;
 unsigned long flags;

 mutex_lock(&hdr->block_mutex);
 spin_lock_irqsave(&emu->memblk_lock, flags);
 if (blk->mapped_page >= 0)
  unmap_memblk(emu, blk);
 spin_unlock_irqrestore(&emu->memblk_lock, flags);
 synth_free_pages(emu, blk);
  __snd_util_mem_free(hdr, memblk);
 mutex_unlock(&hdr->block_mutex);
 return 0;
}
