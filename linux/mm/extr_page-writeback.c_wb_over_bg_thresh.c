
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirty_throttle_control {scalar_t__ dirty; scalar_t__ bg_thresh; int wb; int avail; int member_0; } ;
struct bdi_writeback {int dummy; } ;


 int GDTC_INIT (struct bdi_writeback*) ;
 int MDTC_INIT (struct bdi_writeback*,struct dirty_throttle_control*) ;
 int NR_FILE_DIRTY ;
 int NR_UNSTABLE_NFS ;
 int WB_RECLAIMABLE ;
 int domain_dirty_limits (struct dirty_throttle_control* const) ;
 int global_dirtyable_memory () ;
 scalar_t__ global_node_page_state (int ) ;
 int mdtc_calc_avail (struct dirty_throttle_control* const,unsigned long,unsigned long) ;
 scalar_t__ mdtc_valid (struct dirty_throttle_control*) ;
 int mem_cgroup_wb_stats (struct bdi_writeback*,unsigned long*,unsigned long*,scalar_t__*,unsigned long*) ;
 scalar_t__ wb_calc_thresh (int ,scalar_t__) ;
 scalar_t__ wb_stat (struct bdi_writeback*,int ) ;

bool wb_over_bg_thresh(struct bdi_writeback *wb)
{
 struct dirty_throttle_control gdtc_stor = { GDTC_INIT(wb) };
 struct dirty_throttle_control mdtc_stor = { MDTC_INIT(wb, &gdtc_stor) };
 struct dirty_throttle_control * const gdtc = &gdtc_stor;
 struct dirty_throttle_control * const mdtc = mdtc_valid(&mdtc_stor) ?
           &mdtc_stor : ((void*)0);





 gdtc->avail = global_dirtyable_memory();
 gdtc->dirty = global_node_page_state(NR_FILE_DIRTY) +
        global_node_page_state(NR_UNSTABLE_NFS);
 domain_dirty_limits(gdtc);

 if (gdtc->dirty > gdtc->bg_thresh)
  return 1;

 if (wb_stat(wb, WB_RECLAIMABLE) >
     wb_calc_thresh(gdtc->wb, gdtc->bg_thresh))
  return 1;

 if (mdtc) {
  unsigned long filepages, headroom, writeback;

  mem_cgroup_wb_stats(wb, &filepages, &headroom, &mdtc->dirty,
        &writeback);
  mdtc_calc_avail(mdtc, filepages, headroom);
  domain_dirty_limits(mdtc);

  if (mdtc->dirty > mdtc->bg_thresh)
   return 1;

  if (wb_stat(wb, WB_RECLAIMABLE) >
      wb_calc_thresh(mdtc->wb, mdtc->bg_thresh))
   return 1;
 }

 return 0;
}
