
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int __kmem_cache_empty (struct kmem_cache*) ;
 int quarantine_remove_cache (struct kmem_cache*) ;

void kasan_cache_shutdown(struct kmem_cache *cache)
{
 if (!__kmem_cache_empty(cache))
  quarantine_remove_cache(cache);
}
