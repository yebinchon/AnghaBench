
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; int (* set_state_shutdown ) (struct clock_event_device*) ;int (* set_state_periodic ) (struct clock_event_device*) ;int (* set_state_oneshot ) (struct clock_event_device*) ;int (* set_state_oneshot_stopped ) (struct clock_event_device*) ;} ;
typedef enum clock_event_state { ____Placeholder_clock_event_state } clock_event_state ;


 int CLOCK_EVT_FEAT_DUMMY ;
 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_FEAT_PERIODIC ;





 int EINVAL ;
 int ENOSYS ;
 int WARN_ONCE (int,char*,int ) ;
 int clockevent_get_state (struct clock_event_device*) ;
 int clockevent_state_oneshot (struct clock_event_device*) ;
 int stub1 (struct clock_event_device*) ;
 int stub2 (struct clock_event_device*) ;
 int stub3 (struct clock_event_device*) ;
 int stub4 (struct clock_event_device*) ;

__attribute__((used)) static int __clockevents_switch_state(struct clock_event_device *dev,
          enum clock_event_state state)
{
 if (dev->features & CLOCK_EVT_FEAT_DUMMY)
  return 0;


 switch (state) {
 case 132:


 case 128:
  if (dev->set_state_shutdown)
   return dev->set_state_shutdown(dev);
  return 0;

 case 129:

  if (!(dev->features & CLOCK_EVT_FEAT_PERIODIC))
   return -ENOSYS;
  if (dev->set_state_periodic)
   return dev->set_state_periodic(dev);
  return 0;

 case 131:

  if (!(dev->features & CLOCK_EVT_FEAT_ONESHOT))
   return -ENOSYS;
  if (dev->set_state_oneshot)
   return dev->set_state_oneshot(dev);
  return 0;

 case 130:

  if (WARN_ONCE(!clockevent_state_oneshot(dev),
         "Current state: %d\n",
         clockevent_get_state(dev)))
   return -EINVAL;

  if (dev->set_state_oneshot_stopped)
   return dev->set_state_oneshot_stopped(dev);
  else
   return -ENOSYS;

 default:
  return -ENOSYS;
 }
}
