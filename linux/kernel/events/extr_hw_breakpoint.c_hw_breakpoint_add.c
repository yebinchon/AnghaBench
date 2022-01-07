
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sample_period; int last_period; int state; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int arch_install_hw_breakpoint (struct perf_event*) ;
 scalar_t__ is_sampling_event (struct perf_event*) ;
 int perf_swevent_set_period (struct perf_event*) ;

__attribute__((used)) static int hw_breakpoint_add(struct perf_event *bp, int flags)
{
 if (!(flags & PERF_EF_START))
  bp->hw.state = PERF_HES_STOPPED;

 if (is_sampling_event(bp)) {
  bp->hw.last_period = bp->hw.sample_period;
  perf_swevent_set_period(bp);
 }

 return arch_install_hw_breakpoint(bp);
}
