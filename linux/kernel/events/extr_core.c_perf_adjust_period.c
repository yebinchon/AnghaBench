
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hw_perf_event {int sample_period; int period_left; } ;
struct perf_event {TYPE_1__* pmu; struct hw_perf_event hw; } ;
typedef int s64 ;
struct TYPE_2__ {int (* start ) (struct perf_event*,int ) ;int (* stop ) (struct perf_event*,int ) ;} ;


 int PERF_EF_RELOAD ;
 int PERF_EF_UPDATE ;
 int local64_read (int *) ;
 int local64_set (int *,int ) ;
 int perf_calculate_period (struct perf_event*,int ,int ) ;
 int stub1 (struct perf_event*,int ) ;
 int stub2 (struct perf_event*,int ) ;

__attribute__((used)) static void perf_adjust_period(struct perf_event *event, u64 nsec, u64 count, bool disable)
{
 struct hw_perf_event *hwc = &event->hw;
 s64 period, sample_period;
 s64 delta;

 period = perf_calculate_period(event, nsec, count);

 delta = (s64)(period - hwc->sample_period);
 delta = (delta + 7) / 8;

 sample_period = hwc->sample_period + delta;

 if (!sample_period)
  sample_period = 1;

 hwc->sample_period = sample_period;

 if (local64_read(&hwc->period_left) > 8*sample_period) {
  if (disable)
   event->pmu->stop(event, PERF_EF_UPDATE);

  local64_set(&hwc->period_left, 0);

  if (disable)
   event->pmu->start(event, PERF_EF_RELOAD);
 }
}
