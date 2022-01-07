
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int * dlm_lock_cache ;
 int * kmem_cache_create (char*,int,int ,int ,int *) ;

int dlm_init_lock_cache(void)
{
 dlm_lock_cache = kmem_cache_create("o2dlm_lock",
        sizeof(struct dlm_lock),
        0, SLAB_HWCACHE_ALIGN, ((void*)0));
 if (dlm_lock_cache == ((void*)0))
  return -ENOMEM;
 return 0;
}
