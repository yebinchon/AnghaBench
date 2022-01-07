
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tick_device {struct clock_event_device* evtdev; } ;
struct clock_event_device {int features; } ;
typedef enum tick_broadcast_mode { ____Placeholder_tick_broadcast_mode } tick_broadcast_mode ;
struct TYPE_2__ {scalar_t__ mode; struct clock_event_device* evtdev; } ;


 int CLOCK_EVT_FEAT_C3STOP ;
 int CLOCK_EVT_FEAT_HRTIMER ;
 scalar_t__ TICKDEV_MODE_PERIODIC ;



 int clockevents_shutdown (struct clock_event_device*) ;
 int cpumask_clear_cpu (int,int ) ;
 int cpumask_empty (int ) ;
 int cpumask_set_cpu (int,int ) ;
 int cpumask_test_and_clear_cpu (int,int ) ;
 int cpumask_test_and_set_cpu (int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int smp_processor_id () ;
 struct tick_device* this_cpu_ptr (int *) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_forced ;
 int tick_broadcast_lock ;
 int tick_broadcast_mask ;
 int tick_broadcast_on ;
 int tick_broadcast_setup_oneshot (struct clock_event_device*) ;
 int tick_broadcast_start_periodic (struct clock_event_device*) ;
 int tick_cpu_device ;
 int tick_device_is_functional (struct clock_event_device*) ;
 int tick_setup_periodic (struct clock_event_device*,int ) ;

void tick_broadcast_control(enum tick_broadcast_mode mode)
{
 struct clock_event_device *bc, *dev;
 struct tick_device *td;
 int cpu, bc_stopped;
 unsigned long flags;


 raw_spin_lock_irqsave(&tick_broadcast_lock, flags);
 td = this_cpu_ptr(&tick_cpu_device);
 dev = td->evtdev;




 if (!dev || !(dev->features & CLOCK_EVT_FEAT_C3STOP))
  goto out;

 if (!tick_device_is_functional(dev))
  goto out;

 cpu = smp_processor_id();
 bc = tick_broadcast_device.evtdev;
 bc_stopped = cpumask_empty(tick_broadcast_mask);

 switch (mode) {
 case 130:
  tick_broadcast_forced = 1;

 case 128:
  cpumask_set_cpu(cpu, tick_broadcast_on);
  if (!cpumask_test_and_set_cpu(cpu, tick_broadcast_mask)) {
   if (bc && !(bc->features & CLOCK_EVT_FEAT_HRTIMER) &&
       tick_broadcast_device.mode == TICKDEV_MODE_PERIODIC)
    clockevents_shutdown(dev);
  }
  break;

 case 129:
  if (tick_broadcast_forced)
   break;
  cpumask_clear_cpu(cpu, tick_broadcast_on);
  if (cpumask_test_and_clear_cpu(cpu, tick_broadcast_mask)) {
   if (tick_broadcast_device.mode ==
       TICKDEV_MODE_PERIODIC)
    tick_setup_periodic(dev, 0);
  }
  break;
 }

 if (bc) {
  if (cpumask_empty(tick_broadcast_mask)) {
   if (!bc_stopped)
    clockevents_shutdown(bc);
  } else if (bc_stopped) {
   if (tick_broadcast_device.mode == TICKDEV_MODE_PERIODIC)
    tick_broadcast_start_periodic(bc);
   else
    tick_broadcast_setup_oneshot(bc);
  }
 }
out:
 raw_spin_unlock_irqrestore(&tick_broadcast_lock, flags);
}
