
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_io_stat {void* aggregate_completion_time; void* total_busy_time; int bytes_not_delivered; int bytes_completed; int ops_completed; } ;
struct nfs4_ff_layoutstat {int busy_timer; struct nfs4_ff_io_stat io_stat; } ;
typedef int ktime_t ;
typedef scalar_t__ __u64 ;


 void* ktime_add (void*,int ) ;
 int ktime_sub (int ,int ) ;
 int nfs4_ff_end_busy_timer (int *,int ) ;

__attribute__((used)) static void
nfs4_ff_layout_stat_io_update_completed(struct nfs4_ff_layoutstat *layoutstat,
  __u64 requested,
  __u64 completed,
  ktime_t time_completed,
  ktime_t time_started)
{
 struct nfs4_ff_io_stat *iostat = &layoutstat->io_stat;
 ktime_t completion_time = ktime_sub(time_completed, time_started);
 ktime_t timer;

 iostat->ops_completed++;
 iostat->bytes_completed += completed;
 iostat->bytes_not_delivered += requested - completed;

 timer = nfs4_ff_end_busy_timer(&layoutstat->busy_timer, time_completed);
 iostat->total_busy_time =
   ktime_add(iostat->total_busy_time, timer);
 iostat->aggregate_completion_time =
   ktime_add(iostat->aggregate_completion_time,
     completion_time);
}
