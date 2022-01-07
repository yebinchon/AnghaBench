
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int features; int event_handler; } ;
struct TYPE_2__ {int mode; struct clock_event_device* evtdev; } ;


 int CLOCK_EVT_FEAT_C3STOP ;
 int CLOCK_EVT_FEAT_HRTIMER ;


 int clockevents_shutdown (struct clock_event_device*) ;
 int cpumask_clear_cpu (int,int ) ;
 int cpumask_empty (int ) ;
 int cpumask_set_cpu (int,int ) ;
 int cpumask_test_cpu (int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int tick_broadcast_clear_oneshot (int) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_lock ;
 int tick_broadcast_mask ;
 int tick_broadcast_on ;
 int tick_broadcast_setup_oneshot (struct clock_event_device*) ;
 int tick_broadcast_start_periodic (struct clock_event_device*) ;
 int tick_device_is_functional (struct clock_event_device*) ;
 int tick_device_setup_broadcast_func (struct clock_event_device*) ;
 int tick_handle_periodic ;

int tick_device_uses_broadcast(struct clock_event_device *dev, int cpu)
{
 struct clock_event_device *bc = tick_broadcast_device.evtdev;
 unsigned long flags;
 int ret = 0;

 raw_spin_lock_irqsave(&tick_broadcast_lock, flags);







 if (!tick_device_is_functional(dev)) {
  dev->event_handler = tick_handle_periodic;
  tick_device_setup_broadcast_func(dev);
  cpumask_set_cpu(cpu, tick_broadcast_mask);
  if (tick_broadcast_device.mode == 128)
   tick_broadcast_start_periodic(bc);
  else
   tick_broadcast_setup_oneshot(bc);
  ret = 1;
 } else {




  if (!(dev->features & CLOCK_EVT_FEAT_C3STOP))
   cpumask_clear_cpu(cpu, tick_broadcast_mask);
  else
   tick_device_setup_broadcast_func(dev);





  if (!cpumask_test_cpu(cpu, tick_broadcast_on))
   cpumask_clear_cpu(cpu, tick_broadcast_mask);

  switch (tick_broadcast_device.mode) {
  case 129:
   tick_broadcast_clear_oneshot(cpu);
   ret = 0;
   break;

  case 128:





   if (cpumask_empty(tick_broadcast_mask) && bc)
    clockevents_shutdown(bc);
   if (bc && !(bc->features & CLOCK_EVT_FEAT_HRTIMER))
    ret = cpumask_test_cpu(cpu, tick_broadcast_mask);
   break;
  default:
   break;
  }
 }
 raw_spin_unlock_irqrestore(&tick_broadcast_lock, flags);
 return ret;
}
