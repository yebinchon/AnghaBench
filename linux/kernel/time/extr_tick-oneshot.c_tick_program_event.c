
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {scalar_t__ next_event; } ;
typedef scalar_t__ ktime_t ;
struct TYPE_2__ {int evtdev; } ;


 int CLOCK_EVT_STATE_ONESHOT ;
 int CLOCK_EVT_STATE_ONESHOT_STOPPED ;
 scalar_t__ KTIME_MAX ;
 struct clock_event_device* __this_cpu_read (int ) ;
 int clockevent_state_oneshot_stopped (struct clock_event_device*) ;
 int clockevents_program_event (struct clock_event_device*,scalar_t__,int) ;
 int clockevents_switch_state (struct clock_event_device*,int ) ;
 TYPE_1__ tick_cpu_device ;
 scalar_t__ unlikely (int) ;

int tick_program_event(ktime_t expires, int force)
{
 struct clock_event_device *dev = __this_cpu_read(tick_cpu_device.evtdev);

 if (unlikely(expires == KTIME_MAX)) {



  clockevents_switch_state(dev, CLOCK_EVT_STATE_ONESHOT_STOPPED);
  dev->next_event = KTIME_MAX;
  return 0;
 }

 if (unlikely(clockevent_state_oneshot_stopped(dev))) {




  clockevents_switch_state(dev, CLOCK_EVT_STATE_ONESHOT);
 }

 return clockevents_program_event(dev, expires, force);
}
