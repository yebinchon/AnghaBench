
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int dummy; } ;


 int DLM_LOCKID_NAME_MAX ;
 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int dlm_destroy_master_caches () ;
 void* dlm_lockname_cache ;
 void* dlm_lockres_cache ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;

int dlm_init_master_caches(void)
{
 dlm_lockres_cache = kmem_cache_create("o2dlm_lockres",
           sizeof(struct dlm_lock_resource),
           0, SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!dlm_lockres_cache)
  goto bail;

 dlm_lockname_cache = kmem_cache_create("o2dlm_lockname",
            DLM_LOCKID_NAME_MAX, 0,
            SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!dlm_lockname_cache)
  goto bail;

 return 0;
bail:
 dlm_destroy_master_caches();
 return -ENOMEM;
}
