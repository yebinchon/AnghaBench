
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int list; int owner; } ;


 int BUG_ON (int) ;
 int CLOCK_EVT_STATE_DETACHED ;
 int clockevent_state_detached (struct clock_event_device*) ;
 int clockevents_released ;
 int clockevents_shutdown (struct clock_event_device*) ;
 int clockevents_switch_state (struct clock_event_device*,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int module_put (int ) ;

void clockevents_exchange_device(struct clock_event_device *old,
     struct clock_event_device *new)
{




 if (old) {
  module_put(old->owner);
  clockevents_switch_state(old, CLOCK_EVT_STATE_DETACHED);
  list_del(&old->list);
  list_add(&old->list, &clockevents_released);
 }

 if (new) {
  BUG_ON(!clockevent_state_detached(new));
  clockevents_shutdown(new);
 }
}
