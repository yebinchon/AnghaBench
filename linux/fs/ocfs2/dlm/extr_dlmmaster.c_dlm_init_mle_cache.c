
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int * dlm_mle_cache ;
 int * kmem_cache_create (char*,int,int ,int ,int *) ;

int dlm_init_mle_cache(void)
{
 dlm_mle_cache = kmem_cache_create("o2dlm_mle",
       sizeof(struct dlm_master_list_entry),
       0, SLAB_HWCACHE_ALIGN,
       ((void*)0));
 if (dlm_mle_cache == ((void*)0))
  return -ENOMEM;
 return 0;
}
