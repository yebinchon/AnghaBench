
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dlm_lockname_cache ;
 int * dlm_lockres_cache ;
 int kmem_cache_destroy (int *) ;

void dlm_destroy_master_caches(void)
{
 kmem_cache_destroy(dlm_lockname_cache);
 dlm_lockname_cache = ((void*)0);

 kmem_cache_destroy(dlm_lockres_cache);
 dlm_lockres_cache = ((void*)0);
}
