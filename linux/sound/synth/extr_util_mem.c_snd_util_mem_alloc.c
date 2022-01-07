
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memhdr {int block_mutex; } ;
struct snd_util_memblk {int dummy; } ;


 struct snd_util_memblk* __snd_util_mem_alloc (struct snd_util_memhdr*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct snd_util_memblk *
snd_util_mem_alloc(struct snd_util_memhdr *hdr, int size)
{
 struct snd_util_memblk *blk;
 mutex_lock(&hdr->block_mutex);
 blk = __snd_util_mem_alloc(hdr, size);
 mutex_unlock(&hdr->block_mutex);
 return blk;
}
