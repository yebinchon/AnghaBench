
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
typedef int gfp_t ;


 unsigned int ALLOC_KSWAPD ;
 unsigned int ALLOC_NOFRAGMENT ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ ZONE_DMA32 ;
 scalar_t__ ZONE_NORMAL ;
 int __GFP_KSWAPD_RECLAIM ;
 int nr_online_nodes ;
 int populated_zone (struct zone*) ;
 scalar_t__ zone_idx (struct zone*) ;

__attribute__((used)) static inline unsigned int
alloc_flags_nofragment(struct zone *zone, gfp_t gfp_mask)
{
 unsigned int alloc_flags = 0;

 if (gfp_mask & __GFP_KSWAPD_RECLAIM)
  alloc_flags |= ALLOC_KSWAPD;
 return alloc_flags;
}
