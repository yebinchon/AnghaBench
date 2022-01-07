
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memhdr {int block_mutex; } ;
struct snd_util_memblk {int dummy; } ;


 int EINVAL ;
 int __snd_util_mem_free (struct snd_util_memhdr*,struct snd_util_memblk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;

int snd_util_mem_free(struct snd_util_memhdr *hdr, struct snd_util_memblk *blk)
{
 if (snd_BUG_ON(!hdr || !blk))
  return -EINVAL;

 mutex_lock(&hdr->block_mutex);
 __snd_util_mem_free(hdr, blk);
 mutex_unlock(&hdr->block_mutex);
 return 0;
}
