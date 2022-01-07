
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int slab_flags_t ;


 struct kmem_cache* kmem_cache_create_usercopy (char const*,unsigned int,unsigned int,int ,int ,int ,void (*) (void*)) ;

struct kmem_cache *
kmem_cache_create(const char *name, unsigned int size, unsigned int align,
  slab_flags_t flags, void (*ctor)(void *))
{
 return kmem_cache_create_usercopy(name, size, align, flags, 0, 0,
       ctor);
}
