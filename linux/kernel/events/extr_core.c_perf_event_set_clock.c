
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {TYPE_1__* pmu; int * clock; } ;
typedef int clockid_t ;
struct TYPE_2__ {int capabilities; } ;







 int EINVAL ;
 int PERF_PMU_CAP_NO_NMI ;
 int ktime_get_boottime_ns ;
 int ktime_get_clocktai_ns ;
 int ktime_get_mono_fast_ns ;
 int ktime_get_raw_fast_ns ;
 int ktime_get_real_ns ;

__attribute__((used)) static int perf_event_set_clock(struct perf_event *event, clockid_t clk_id)
{
 bool nmi_safe = 0;

 switch (clk_id) {
 case 131:
  event->clock = &ktime_get_mono_fast_ns;
  nmi_safe = 1;
  break;

 case 130:
  event->clock = &ktime_get_raw_fast_ns;
  nmi_safe = 1;
  break;

 case 129:
  event->clock = &ktime_get_real_ns;
  break;

 case 132:
  event->clock = &ktime_get_boottime_ns;
  break;

 case 128:
  event->clock = &ktime_get_clocktai_ns;
  break;

 default:
  return -EINVAL;
 }

 if (!nmi_safe && !(event->pmu->capabilities & PERF_PMU_CAP_NO_NMI))
  return -EINVAL;

 return 0;
}
