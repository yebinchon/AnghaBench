
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlm_lock_cache ;
 int kmem_cache_destroy (int ) ;

void dlm_destroy_lock_cache(void)
{
 kmem_cache_destroy(dlm_lock_cache);
}
