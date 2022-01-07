
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int features; int event_handler; int owner; } ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int clockevents_exchange_device (struct clock_event_device*,struct clock_event_device*) ;
 int clockevents_handle_noop ;
 int cpumask_empty (int ) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_mask ;
 int tick_broadcast_start_periodic (struct clock_event_device*) ;
 int tick_check_broadcast_device (struct clock_event_device*,struct clock_event_device*) ;
 int tick_clock_notify () ;
 int try_module_get (int ) ;

void tick_install_broadcast_device(struct clock_event_device *dev)
{
 struct clock_event_device *cur = tick_broadcast_device.evtdev;

 if (!tick_check_broadcast_device(cur, dev))
  return;

 if (!try_module_get(dev->owner))
  return;

 clockevents_exchange_device(cur, dev);
 if (cur)
  cur->event_handler = clockevents_handle_noop;
 tick_broadcast_device.evtdev = dev;
 if (!cpumask_empty(tick_broadcast_mask))
  tick_broadcast_start_periodic(dev);
 if (dev->features & CLOCK_EVT_FEAT_ONESHOT)
  tick_clock_notify();
}
