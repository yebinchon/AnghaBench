
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zonelist {int dummy; } ;
struct scan_control {int order; scalar_t__ priority; int may_writepage; int may_unmap; int may_swap; int gfp_mask; int reclaim_state; int * nodemask; int reclaim_idx; int nr_to_reclaim; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ DEF_PRIORITY ;
 scalar_t__ MAX_NR_ZONES ;
 scalar_t__ MAX_ORDER ;
 scalar_t__ S8_MAX ;
 int SWAP_CLUSTER_MAX ;
 int current ;
 int current_gfp_context (int ) ;
 unsigned long do_try_to_free_pages (struct zonelist*,struct scan_control*) ;
 int gfp_zone (int ) ;
 int laptop_mode ;
 int set_task_reclaim_state (int ,int *) ;
 scalar_t__ throttle_direct_reclaim (int ,struct zonelist*,int *) ;
 int trace_mm_vmscan_direct_reclaim_begin (int,int ) ;
 int trace_mm_vmscan_direct_reclaim_end (unsigned long) ;

unsigned long try_to_free_pages(struct zonelist *zonelist, int order,
    gfp_t gfp_mask, nodemask_t *nodemask)
{
 unsigned long nr_reclaimed;
 struct scan_control sc = {
  .nr_to_reclaim = SWAP_CLUSTER_MAX,
  .gfp_mask = current_gfp_context(gfp_mask),
  .reclaim_idx = gfp_zone(gfp_mask),
  .order = order,
  .nodemask = nodemask,
  .priority = DEF_PRIORITY,
  .may_writepage = !laptop_mode,
  .may_unmap = 1,
  .may_swap = 1,
 };





 BUILD_BUG_ON(MAX_ORDER > S8_MAX);
 BUILD_BUG_ON(DEF_PRIORITY > S8_MAX);
 BUILD_BUG_ON(MAX_NR_ZONES > S8_MAX);






 if (throttle_direct_reclaim(sc.gfp_mask, zonelist, nodemask))
  return 1;

 set_task_reclaim_state(current, &sc.reclaim_state);
 trace_mm_vmscan_direct_reclaim_begin(order, sc.gfp_mask);

 nr_reclaimed = do_try_to_free_pages(zonelist, &sc);

 trace_mm_vmscan_direct_reclaim_end(nr_reclaimed);
 set_task_reclaim_state(current, ((void*)0));

 return nr_reclaimed;
}
