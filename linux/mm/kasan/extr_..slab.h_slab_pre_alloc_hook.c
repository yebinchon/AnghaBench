
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; } ;
typedef int gfp_t ;


 int SLAB_ACCOUNT ;
 int __GFP_ACCOUNT ;
 int fs_reclaim_acquire (int) ;
 int fs_reclaim_release (int) ;
 int gfp_allowed_mask ;
 int gfpflags_allow_blocking (int) ;
 scalar_t__ memcg_kmem_enabled () ;
 struct kmem_cache* memcg_kmem_get_cache (struct kmem_cache*) ;
 int might_sleep_if (int ) ;
 scalar_t__ should_failslab (struct kmem_cache*,int) ;

__attribute__((used)) static inline struct kmem_cache *slab_pre_alloc_hook(struct kmem_cache *s,
           gfp_t flags)
{
 flags &= gfp_allowed_mask;

 fs_reclaim_acquire(flags);
 fs_reclaim_release(flags);

 might_sleep_if(gfpflags_allow_blocking(flags));

 if (should_failslab(s, flags))
  return ((void*)0);

 if (memcg_kmem_enabled() &&
     ((flags & __GFP_ACCOUNT) || (s->flags & SLAB_ACCOUNT)))
  return memcg_kmem_get_cache(s);

 return s;
}
