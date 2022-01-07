
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_util_memhdr {int block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct TYPE_2__ {struct snd_util_memhdr* memhdr; } ;
struct snd_trident {TYPE_1__ tlb; } ;


 int EINVAL ;
 int __snd_util_mem_free (struct snd_util_memhdr*,struct snd_util_memblk*) ;
 int firstpg (struct snd_util_memblk*) ;
 int lastpg (struct snd_util_memblk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_silent_tlb (struct snd_trident*,int) ;
 scalar_t__ snd_BUG_ON (int) ;

int snd_trident_free_pages(struct snd_trident *trident,
      struct snd_util_memblk *blk)
{
 struct snd_util_memhdr *hdr;
 int page;

 if (snd_BUG_ON(!trident || !blk))
  return -EINVAL;

 hdr = trident->tlb.memhdr;
 mutex_lock(&hdr->block_mutex);

 for (page = firstpg(blk); page <= lastpg(blk); page++)
  set_silent_tlb(trident, page);

 __snd_util_mem_free(hdr, blk);
 mutex_unlock(&hdr->block_mutex);
 return 0;
}
