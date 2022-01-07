
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slab_flags_t ;



slab_flags_t kmem_cache_flags(unsigned int object_size,
 slab_flags_t flags, const char *name,
 void (*ctor)(void *))
{
 return flags;
}
