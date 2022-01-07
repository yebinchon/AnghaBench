
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memhdr {int block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct snd_emu10k1_memblk {int dummy; } ;
struct snd_emu10k1 {struct snd_util_memhdr* memhdr; } ;


 scalar_t__ __snd_util_mem_alloc (struct snd_util_memhdr*,unsigned int) ;
 int __snd_util_mem_free (struct snd_util_memhdr*,struct snd_util_memblk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_emu10k1_memblk_map (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ;
 scalar_t__ synth_alloc_pages (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ;

struct snd_util_memblk *
snd_emu10k1_synth_alloc(struct snd_emu10k1 *hw, unsigned int size)
{
 struct snd_emu10k1_memblk *blk;
 struct snd_util_memhdr *hdr = hw->memhdr;

 mutex_lock(&hdr->block_mutex);
 blk = (struct snd_emu10k1_memblk *)__snd_util_mem_alloc(hdr, size);
 if (blk == ((void*)0)) {
  mutex_unlock(&hdr->block_mutex);
  return ((void*)0);
 }
 if (synth_alloc_pages(hw, blk)) {
  __snd_util_mem_free(hdr, (struct snd_util_memblk *)blk);
  mutex_unlock(&hdr->block_mutex);
  return ((void*)0);
 }
 snd_emu10k1_memblk_map(hw, blk);
 mutex_unlock(&hdr->block_mutex);
 return (struct snd_util_memblk *)blk;
}
