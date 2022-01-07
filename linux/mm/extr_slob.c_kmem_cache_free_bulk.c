
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int __kmem_cache_free_bulk (struct kmem_cache*,size_t,void**) ;

void kmem_cache_free_bulk(struct kmem_cache *s, size_t size, void **p)
{
 __kmem_cache_free_bulk(s, size, p);
}
