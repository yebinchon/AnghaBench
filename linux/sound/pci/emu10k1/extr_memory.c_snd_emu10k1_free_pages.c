
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memblk {int dummy; } ;
struct snd_emu10k1 {int dummy; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emu10k1_synth_free (struct snd_emu10k1*,struct snd_util_memblk*) ;

int snd_emu10k1_free_pages(struct snd_emu10k1 *emu, struct snd_util_memblk *blk)
{
 if (snd_BUG_ON(!emu || !blk))
  return -EINVAL;
 return snd_emu10k1_synth_free(emu, blk);
}
