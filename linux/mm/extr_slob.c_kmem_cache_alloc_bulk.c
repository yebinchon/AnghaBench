
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int __kmem_cache_alloc_bulk (struct kmem_cache*,int ,size_t,void**) ;

int kmem_cache_alloc_bulk(struct kmem_cache *s, gfp_t flags, size_t size,
        void **p)
{
 return __kmem_cache_alloc_bulk(s, flags, size, p);
}
