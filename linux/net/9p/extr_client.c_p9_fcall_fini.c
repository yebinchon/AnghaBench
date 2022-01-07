
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fcall {int sdata; scalar_t__ cache; } ;


 int kfree (int ) ;
 int kmem_cache_free (scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

void p9_fcall_fini(struct p9_fcall *fc)
{



 if (unlikely(!fc->sdata))
  return;

 if (fc->cache)
  kmem_cache_free(fc->cache, fc->sdata);
 else
  kfree(fc->sdata);
}
