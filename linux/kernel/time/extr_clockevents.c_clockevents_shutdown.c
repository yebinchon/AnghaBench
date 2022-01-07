
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int next_event; } ;


 int CLOCK_EVT_STATE_SHUTDOWN ;
 int KTIME_MAX ;
 int clockevents_switch_state (struct clock_event_device*,int ) ;

void clockevents_shutdown(struct clock_event_device *dev)
{
 clockevents_switch_state(dev, CLOCK_EVT_STATE_SHUTDOWN);
 dev->next_event = KTIME_MAX;
}
