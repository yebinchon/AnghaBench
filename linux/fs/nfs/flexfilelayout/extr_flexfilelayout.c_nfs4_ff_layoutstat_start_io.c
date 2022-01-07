
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_flexfile_layout {void* last_report_time; } ;
struct nfs4_ff_layoutstat {int busy_timer; } ;
struct nfs4_ff_layout_mirror {scalar_t__ report_interval; void* start_time; int layout; } ;
typedef long long s64 ;
typedef void* ktime_t ;


 long long FF_LAYOUTSTATS_REPORT_INTERVAL ;
 struct nfs4_flexfile_layout* FF_LAYOUT_FROM_HDR (int ) ;
 int ktime_sub (void*,void*) ;
 long long ktime_to_ms (int ) ;
 scalar_t__ layoutstats_timer ;
 int nfs4_ff_start_busy_timer (int *,void*) ;

__attribute__((used)) static bool
nfs4_ff_layoutstat_start_io(struct nfs4_ff_layout_mirror *mirror,
       struct nfs4_ff_layoutstat *layoutstat,
       ktime_t now)
{
 s64 report_interval = FF_LAYOUTSTATS_REPORT_INTERVAL;
 struct nfs4_flexfile_layout *ffl = FF_LAYOUT_FROM_HDR(mirror->layout);

 nfs4_ff_start_busy_timer(&layoutstat->busy_timer, now);
 if (!mirror->start_time)
  mirror->start_time = now;
 if (mirror->report_interval != 0)
  report_interval = (s64)mirror->report_interval * 1000LL;
 else if (layoutstats_timer != 0)
  report_interval = (s64)layoutstats_timer * 1000LL;
 if (ktime_to_ms(ktime_sub(now, ffl->last_report_time)) >=
   report_interval) {
  ffl->last_report_time = now;
  return 1;
 }

 return 0;
}
