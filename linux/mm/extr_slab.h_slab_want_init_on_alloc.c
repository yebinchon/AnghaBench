
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; scalar_t__ ctor; } ;
typedef int gfp_t ;


 int SLAB_POISON ;
 int SLAB_TYPESAFE_BY_RCU ;
 int __GFP_ZERO ;
 int init_on_alloc ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static inline bool slab_want_init_on_alloc(gfp_t flags, struct kmem_cache *c)
{
 if (static_branch_unlikely(&init_on_alloc)) {
  if (c->ctor)
   return 0;
  if (c->flags & (SLAB_TYPESAFE_BY_RCU | SLAB_POISON))
   return flags & __GFP_ZERO;
  return 1;
 }
 return flags & __GFP_ZERO;
}
