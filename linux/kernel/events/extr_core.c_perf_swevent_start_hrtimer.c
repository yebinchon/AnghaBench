
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int hrtimer; int sample_period; int period_left; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef int s64 ;


 int HRTIMER_MODE_REL_PINNED_HARD ;
 int hrtimer_start (int *,int ,int ) ;
 int is_sampling_event (struct perf_event*) ;
 int local64_read (int *) ;
 int local64_set (int *,int ) ;
 int max_t (int ,int,int ) ;
 int ns_to_ktime (int) ;
 int u64 ;

__attribute__((used)) static void perf_swevent_start_hrtimer(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 s64 period;

 if (!is_sampling_event(event))
  return;

 period = local64_read(&hwc->period_left);
 if (period) {
  if (period < 0)
   period = 10000;

  local64_set(&hwc->period_left, 0);
 } else {
  period = max_t(u64, 10000, hwc->sample_period);
 }
 hrtimer_start(&hwc->hrtimer, ns_to_ktime(period),
        HRTIMER_MODE_REL_PINNED_HARD);
}
