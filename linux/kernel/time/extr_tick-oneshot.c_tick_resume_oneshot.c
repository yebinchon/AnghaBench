
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int evtdev; } ;


 int CLOCK_EVT_STATE_ONESHOT ;
 struct clock_event_device* __this_cpu_read (int ) ;
 int clockevents_program_event (struct clock_event_device*,int ,int) ;
 int clockevents_switch_state (struct clock_event_device*,int ) ;
 int ktime_get () ;
 TYPE_1__ tick_cpu_device ;

void tick_resume_oneshot(void)
{
 struct clock_event_device *dev = __this_cpu_read(tick_cpu_device.evtdev);

 clockevents_switch_state(dev, CLOCK_EVT_STATE_ONESHOT);
 clockevents_program_event(dev, ktime_get(), 1);
}
