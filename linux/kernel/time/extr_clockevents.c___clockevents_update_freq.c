
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int next_event; } ;


 int CLOCK_EVT_STATE_PERIODIC ;
 int __clockevents_switch_state (struct clock_event_device*,int ) ;
 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 scalar_t__ clockevent_state_periodic (struct clock_event_device*) ;
 int clockevents_config (struct clock_event_device*,int ) ;
 int clockevents_program_event (struct clock_event_device*,int ,int) ;

int __clockevents_update_freq(struct clock_event_device *dev, u32 freq)
{
 clockevents_config(dev, freq);

 if (clockevent_state_oneshot(dev))
  return clockevents_program_event(dev, dev->next_event, 0);

 if (clockevent_state_periodic(dev))
  return __clockevents_switch_state(dev, CLOCK_EVT_STATE_PERIODIC);

 return 0;
}
