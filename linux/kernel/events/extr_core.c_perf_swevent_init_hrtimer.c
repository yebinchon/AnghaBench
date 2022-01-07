
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long freq; long sample_freq; long sample_period; } ;
struct TYPE_4__ {int function; } ;
struct hw_perf_event {long sample_period; long last_period; int period_left; TYPE_2__ hrtimer; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL_HARD ;
 long NSEC_PER_SEC ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 int is_sampling_event (struct perf_event*) ;
 int local64_set (int *,long) ;
 int perf_swevent_hrtimer ;

__attribute__((used)) static void perf_swevent_init_hrtimer(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;

 if (!is_sampling_event(event))
  return;

 hrtimer_init(&hwc->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL_HARD);
 hwc->hrtimer.function = perf_swevent_hrtimer;





 if (event->attr.freq) {
  long freq = event->attr.sample_freq;

  event->attr.sample_period = NSEC_PER_SEC / freq;
  hwc->sample_period = event->attr.sample_period;
  local64_set(&hwc->period_left, hwc->sample_period);
  hwc->last_period = hwc->sample_period;
  event->attr.freq = 0;
 }
}
