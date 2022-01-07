
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kmem_cache {int flags; int object_size; } ;
typedef int gfp_t ;
struct TYPE_2__ {int attr; scalar_t__ cache_filter; scalar_t__ ignore_gfp_reclaim; } ;


 int SLAB_FAILSLAB ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_NOFAIL ;
 TYPE_1__ failslab ;
 struct kmem_cache* kmem_cache ;
 int should_fail (int *,int ) ;
 scalar_t__ unlikely (int) ;

bool __should_failslab(struct kmem_cache *s, gfp_t gfpflags)
{

 if (unlikely(s == kmem_cache))
  return 0;

 if (gfpflags & __GFP_NOFAIL)
  return 0;

 if (failslab.ignore_gfp_reclaim &&
   (gfpflags & __GFP_DIRECT_RECLAIM))
  return 0;

 if (failslab.cache_filter && !(s->flags & SLAB_FAILSLAB))
  return 0;

 return should_fail(&failslab.attr, s->object_size);
}
