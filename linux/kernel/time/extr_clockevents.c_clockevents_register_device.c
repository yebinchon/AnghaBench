
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {scalar_t__ cpumask; int list; int name; } ;


 int CLOCK_EVT_STATE_DETACHED ;
 int WARN (int,char*,int ) ;
 int WARN_ON (int) ;
 int clockevent_devices ;
 int clockevent_set_state (struct clock_event_device*,int ) ;
 int clockevents_lock ;
 int clockevents_notify_released () ;
 scalar_t__ cpu_all_mask ;
 scalar_t__ cpu_possible_mask ;
 scalar_t__ cpumask_of (int ) ;
 int list_add (int *,int *) ;
 int num_possible_cpus () ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int smp_processor_id () ;
 int tick_check_new_device (struct clock_event_device*) ;

void clockevents_register_device(struct clock_event_device *dev)
{
 unsigned long flags;


 clockevent_set_state(dev, CLOCK_EVT_STATE_DETACHED);

 if (!dev->cpumask) {
  WARN_ON(num_possible_cpus() > 1);
  dev->cpumask = cpumask_of(smp_processor_id());
 }

 if (dev->cpumask == cpu_all_mask) {
  WARN(1, "%s cpumask == cpu_all_mask, using cpu_possible_mask instead\n",
       dev->name);
  dev->cpumask = cpu_possible_mask;
 }

 raw_spin_lock_irqsave(&clockevents_lock, flags);

 list_add(&dev->list, &clockevent_devices);
 tick_check_new_device(dev);
 clockevents_notify_released();

 raw_spin_unlock_irqrestore(&clockevents_lock, flags);
}
