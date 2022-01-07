
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fcall {int capacity; int sdata; int * cache; } ;
struct p9_client {int msize; int * fcall_cache; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int kmalloc (int,int ) ;
 int kmem_cache_alloc (int *,int ) ;
 scalar_t__ likely (int *) ;

__attribute__((used)) static int p9_fcall_init(struct p9_client *c, struct p9_fcall *fc,
    int alloc_msize)
{
 if (likely(c->fcall_cache) && alloc_msize == c->msize) {
  fc->sdata = kmem_cache_alloc(c->fcall_cache, GFP_NOFS);
  fc->cache = c->fcall_cache;
 } else {
  fc->sdata = kmalloc(alloc_msize, GFP_NOFS);
  fc->cache = ((void*)0);
 }
 if (!fc->sdata)
  return -ENOMEM;
 fc->capacity = alloc_msize;
 return 0;
}
