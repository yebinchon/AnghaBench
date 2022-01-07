
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {size_t object_size; int flags; size_t inuse; size_t size; } ;


 int SLAB_KASAN ;
 int SLAB_POISON ;
 int SLAB_RED_ZONE ;
 int SLAB_STORE_USER ;
 int SLAB_TYPESAFE_BY_RCU ;

__attribute__((used)) static inline size_t slab_ksize(const struct kmem_cache *s)
{

 return s->object_size;
}
