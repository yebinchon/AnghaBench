
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_rcu {int dummy; } ;
struct kmem_cache {int size; int flags; } ;
typedef int slab_flags_t ;


 int SLAB_TYPESAFE_BY_RCU ;

int __kmem_cache_create(struct kmem_cache *c, slab_flags_t flags)
{
 if (flags & SLAB_TYPESAFE_BY_RCU) {

  c->size += sizeof(struct slob_rcu);
 }
 c->flags = flags;
 return 0;
}
