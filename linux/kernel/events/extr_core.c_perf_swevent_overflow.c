
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {scalar_t__ interrupts; } ;
struct perf_event {struct hw_perf_event hw; } ;


 scalar_t__ MAX_INTERRUPTS ;
 scalar_t__ __perf_event_overflow (struct perf_event*,int,struct perf_sample_data*,struct pt_regs*) ;
 scalar_t__ perf_swevent_set_period (struct perf_event*) ;

__attribute__((used)) static void perf_swevent_overflow(struct perf_event *event, u64 overflow,
        struct perf_sample_data *data,
        struct pt_regs *regs)
{
 struct hw_perf_event *hwc = &event->hw;
 int throttle = 0;

 if (!overflow)
  overflow = perf_swevent_set_period(event);

 if (hwc->interrupts == MAX_INTERRUPTS)
  return;

 for (; overflow; overflow--) {
  if (__perf_event_overflow(event, throttle,
         data, regs)) {




   break;
  }
  throttle = 1;
 }
}
