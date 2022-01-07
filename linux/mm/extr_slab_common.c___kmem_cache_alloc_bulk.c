
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int __kmem_cache_free_bulk (struct kmem_cache*,size_t,void**) ;
 void* kmem_cache_alloc (struct kmem_cache*,int ) ;

int __kmem_cache_alloc_bulk(struct kmem_cache *s, gfp_t flags, size_t nr,
        void **p)
{
 size_t i;

 for (i = 0; i < nr; i++) {
  void *x = p[i] = kmem_cache_alloc(s, flags);
  if (!x) {
   __kmem_cache_free_bulk(s, i, p);
   return 0;
  }
 }
 return i;
}
