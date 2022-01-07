
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int offset; } ;


 void* freelist_dereference (struct kmem_cache*,void*) ;

__attribute__((used)) static inline void *get_freepointer(struct kmem_cache *s, void *object)
{
 return freelist_dereference(s, object + s->offset);
}
