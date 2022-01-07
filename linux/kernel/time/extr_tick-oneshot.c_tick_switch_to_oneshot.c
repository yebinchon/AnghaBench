
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tick_device {int mode; struct clock_event_device* evtdev; } ;
struct clock_event_device {int features; void (* event_handler ) (struct clock_event_device*) ;int name; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_STATE_ONESHOT ;
 int EINVAL ;
 int TICKDEV_MODE_ONESHOT ;
 int clockevents_switch_state (struct clock_event_device*,int ) ;
 int pr_cont (char*,...) ;
 int pr_info (char*) ;
 struct tick_device* this_cpu_ptr (int *) ;
 int tick_broadcast_switch_to_oneshot () ;
 int tick_cpu_device ;
 int tick_device_is_functional (struct clock_event_device*) ;

int tick_switch_to_oneshot(void (*handler)(struct clock_event_device *))
{
 struct tick_device *td = this_cpu_ptr(&tick_cpu_device);
 struct clock_event_device *dev = td->evtdev;

 if (!dev || !(dev->features & CLOCK_EVT_FEAT_ONESHOT) ||
      !tick_device_is_functional(dev)) {

  pr_info("Clockevents: could not switch to one-shot mode:");
  if (!dev) {
   pr_cont(" no tick device\n");
  } else {
   if (!tick_device_is_functional(dev))
    pr_cont(" %s is not functional.\n", dev->name);
   else
    pr_cont(" %s does not support one-shot mode.\n",
     dev->name);
  }
  return -EINVAL;
 }

 td->mode = TICKDEV_MODE_ONESHOT;
 dev->event_handler = handler;
 clockevents_switch_state(dev, CLOCK_EVT_STATE_ONESHOT);
 tick_broadcast_switch_to_oneshot();
 return 0;
}
