
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 size_t KMALLOC_MAX_CACHE_SIZE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct kmem_cache* ZERO_SIZE_PTR ;
 unsigned int fls (size_t) ;
 struct kmem_cache*** kmalloc_caches ;
 size_t kmalloc_type (int ) ;
 unsigned int* size_index ;
 size_t size_index_elem (size_t) ;

struct kmem_cache *kmalloc_slab(size_t size, gfp_t flags)
{
 unsigned int index;

 if (size <= 192) {
  if (!size)
   return ZERO_SIZE_PTR;

  index = size_index[size_index_elem(size)];
 } else {
  if (WARN_ON_ONCE(size > KMALLOC_MAX_CACHE_SIZE))
   return ((void*)0);
  index = fls(size - 1);
 }

 return kmalloc_caches[kmalloc_type(flags)][index];
}
