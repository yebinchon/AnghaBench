
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ alloc; scalar_t__ pool_data; } ;
typedef TYPE_1__ mempool_t ;


 int kasan_alloc_pages (void*,unsigned long) ;
 int kasan_unpoison_slab (void*) ;
 scalar_t__ mempool_alloc_pages ;
 scalar_t__ mempool_alloc_slab ;
 scalar_t__ mempool_kmalloc ;

__attribute__((used)) static void kasan_unpoison_element(mempool_t *pool, void *element)
{
 if (pool->alloc == mempool_alloc_slab || pool->alloc == mempool_kmalloc)
  kasan_unpoison_slab(element);
 if (pool->alloc == mempool_alloc_pages)
  kasan_alloc_pages(element, (unsigned long)pool->pool_data);
}
