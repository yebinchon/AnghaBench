
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_context {int spread_dirty_pages; int nodemask; int high_zoneidx; int zonelist; int preferred_zoneref; } ;
typedef int gfp_t ;


 int __GFP_WRITE ;
 int first_zones_zonelist (int ,int ,int ) ;

__attribute__((used)) static inline void finalise_ac(gfp_t gfp_mask, struct alloc_context *ac)
{

 ac->spread_dirty_pages = (gfp_mask & __GFP_WRITE);






 ac->preferred_zoneref = first_zones_zonelist(ac->zonelist,
     ac->high_zoneidx, ac->nodemask);
}
