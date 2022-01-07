
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; } ;


 int NR_SLAB_RECLAIMABLE ;
 int NR_SLAB_UNRECLAIMABLE ;
 int SLAB_RECLAIM_ACCOUNT ;

__attribute__((used)) static inline int cache_vmstat_idx(struct kmem_cache *s)
{
 return (s->flags & SLAB_RECLAIM_ACCOUNT) ?
  NR_SLAB_RECLAIMABLE : NR_SLAB_UNRECLAIMABLE;
}
