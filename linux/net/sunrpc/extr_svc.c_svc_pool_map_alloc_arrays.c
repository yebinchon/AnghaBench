
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_pool_map {int * to_pool; void* pool_to; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;

__attribute__((used)) static int
svc_pool_map_alloc_arrays(struct svc_pool_map *m, unsigned int maxpools)
{
 m->to_pool = kcalloc(maxpools, sizeof(unsigned int), GFP_KERNEL);
 if (!m->to_pool)
  goto fail;
 m->pool_to = kcalloc(maxpools, sizeof(unsigned int), GFP_KERNEL);
 if (!m->pool_to)
  goto fail_free;

 return 0;

fail_free:
 kfree(m->to_pool);
 m->to_pool = ((void*)0);
fail:
 return -ENOMEM;
}
