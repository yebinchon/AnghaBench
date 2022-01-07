
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int size; } ;


 void* kasan_reset_tag (void*) ;

__attribute__((used)) static inline unsigned int slab_index(void *p, struct kmem_cache *s, void *addr)
{
 return (kasan_reset_tag(p) - addr) / s->size;
}
