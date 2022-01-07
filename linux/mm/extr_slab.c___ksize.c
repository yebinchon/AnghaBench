
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {size_t object_size; } ;


 int BUG_ON (int) ;
 void const* ZERO_SIZE_PTR ;
 scalar_t__ unlikely (int) ;
 struct kmem_cache* virt_to_cache (void const*) ;

size_t __ksize(const void *objp)
{
 struct kmem_cache *c;
 size_t size;

 BUG_ON(!objp);
 if (unlikely(objp == ZERO_SIZE_PTR))
  return 0;

 c = virt_to_cache(objp);
 size = c ? c->object_size : 0;

 return size;
}
