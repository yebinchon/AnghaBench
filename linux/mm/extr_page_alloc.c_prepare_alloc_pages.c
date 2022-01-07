
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_context {int migratetype; int * nodemask; int zonelist; int high_zoneidx; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 unsigned int ALLOC_CMA ;
 unsigned int ALLOC_CPUSET ;
 int CONFIG_CMA ;
 scalar_t__ IS_ENABLED (int ) ;
 int MIGRATE_MOVABLE ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_HARDWALL ;
 int cpuset_current_mems_allowed ;
 scalar_t__ cpusets_enabled () ;
 int fs_reclaim_acquire (int) ;
 int fs_reclaim_release (int) ;
 int gfp_zone (int) ;
 int gfpflags_to_migratetype (int) ;
 int might_sleep_if (int) ;
 int node_zonelist (int,int) ;
 scalar_t__ should_fail_alloc_page (int,unsigned int) ;

__attribute__((used)) static inline bool prepare_alloc_pages(gfp_t gfp_mask, unsigned int order,
  int preferred_nid, nodemask_t *nodemask,
  struct alloc_context *ac, gfp_t *alloc_mask,
  unsigned int *alloc_flags)
{
 ac->high_zoneidx = gfp_zone(gfp_mask);
 ac->zonelist = node_zonelist(preferred_nid, gfp_mask);
 ac->nodemask = nodemask;
 ac->migratetype = gfpflags_to_migratetype(gfp_mask);

 if (cpusets_enabled()) {
  *alloc_mask |= __GFP_HARDWALL;
  if (!ac->nodemask)
   ac->nodemask = &cpuset_current_mems_allowed;
  else
   *alloc_flags |= ALLOC_CPUSET;
 }

 fs_reclaim_acquire(gfp_mask);
 fs_reclaim_release(gfp_mask);

 might_sleep_if(gfp_mask & __GFP_DIRECT_RECLAIM);

 if (should_fail_alloc_page(gfp_mask, order))
  return 0;

 if (IS_ENABLED(CONFIG_CMA) && ac->migratetype == MIGRATE_MOVABLE)
  *alloc_flags |= ALLOC_CMA;

 return 1;
}
