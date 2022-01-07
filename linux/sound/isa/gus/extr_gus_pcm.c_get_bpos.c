
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gus_pcm_private {int dma_size; } ;


 int EIO ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int get_bpos(struct gus_pcm_private *pcmp, int voice, unsigned int pos,
      unsigned int len)
{
 unsigned int bpos = pos + (voice * (pcmp->dma_size / 2));
 if (snd_BUG_ON(bpos > pcmp->dma_size))
  return -EIO;
 if (snd_BUG_ON(bpos + len > pcmp->dma_size))
  return -EIO;
 return bpos;
}
