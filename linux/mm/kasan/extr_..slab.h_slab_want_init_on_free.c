
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; scalar_t__ ctor; } ;


 int SLAB_POISON ;
 int SLAB_TYPESAFE_BY_RCU ;
 int init_on_free ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static inline bool slab_want_init_on_free(struct kmem_cache *c)
{
 if (static_branch_unlikely(&init_on_free))
  return !(c->ctor ||
    (c->flags & (SLAB_TYPESAFE_BY_RCU | SLAB_POISON)));
 return 0;
}
