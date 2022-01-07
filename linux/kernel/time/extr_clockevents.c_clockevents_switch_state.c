
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int mult; } ;
typedef enum clock_event_state { ____Placeholder_clock_event_state } clock_event_state ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ __clockevents_switch_state (struct clock_event_device*,int) ;
 int clockevent_get_state (struct clock_event_device*) ;
 int clockevent_set_state (struct clock_event_device*,int) ;
 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;

void clockevents_switch_state(struct clock_event_device *dev,
         enum clock_event_state state)
{
 if (clockevent_get_state(dev) != state) {
  if (__clockevents_switch_state(dev, state))
   return;

  clockevent_set_state(dev, state);





  if (clockevent_state_oneshot(dev)) {
   if (WARN_ON(!dev->mult))
    dev->mult = 1;
  }
 }
}
