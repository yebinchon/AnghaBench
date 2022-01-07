
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirty_throttle_control {struct bdi_writeback* wb; } ;
struct bdi_writeback {unsigned long bw_time_stamp; unsigned long dirtied_stamp; unsigned long written_stamp; int * stat; int list_lock; } ;


 unsigned long BANDWIDTH_INTERVAL ;
 int CONFIG_CGROUP_WRITEBACK ;
 unsigned long HZ ;
 scalar_t__ IS_ENABLED (int ) ;
 size_t WB_DIRTIED ;
 size_t WB_WRITTEN ;
 int domain_update_bandwidth (struct dirty_throttle_control*,unsigned long) ;
 unsigned long jiffies ;
 int lockdep_assert_held (int *) ;
 unsigned long percpu_counter_read (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int wb_update_dirty_ratelimit (struct dirty_throttle_control*,unsigned long,unsigned long) ;
 int wb_update_write_bandwidth (struct bdi_writeback*,unsigned long,unsigned long) ;

__attribute__((used)) static void __wb_update_bandwidth(struct dirty_throttle_control *gdtc,
      struct dirty_throttle_control *mdtc,
      unsigned long start_time,
      bool update_ratelimit)
{
 struct bdi_writeback *wb = gdtc->wb;
 unsigned long now = jiffies;
 unsigned long elapsed = now - wb->bw_time_stamp;
 unsigned long dirtied;
 unsigned long written;

 lockdep_assert_held(&wb->list_lock);




 if (elapsed < BANDWIDTH_INTERVAL)
  return;

 dirtied = percpu_counter_read(&wb->stat[WB_DIRTIED]);
 written = percpu_counter_read(&wb->stat[WB_WRITTEN]);





 if (elapsed > HZ && time_before(wb->bw_time_stamp, start_time))
  goto snapshot;

 if (update_ratelimit) {
  domain_update_bandwidth(gdtc, now);
  wb_update_dirty_ratelimit(gdtc, dirtied, elapsed);





  if (IS_ENABLED(CONFIG_CGROUP_WRITEBACK) && mdtc) {
   domain_update_bandwidth(mdtc, now);
   wb_update_dirty_ratelimit(mdtc, dirtied, elapsed);
  }
 }
 wb_update_write_bandwidth(wb, elapsed, written);

snapshot:
 wb->dirtied_stamp = dirtied;
 wb->written_stamp = written;
 wb->bw_time_stamp = now;
}
