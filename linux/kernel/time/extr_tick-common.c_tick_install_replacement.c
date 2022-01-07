
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tick_device {int evtdev; } ;
struct clock_event_device {int features; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int clockevents_exchange_device (int ,struct clock_event_device*) ;
 int cpumask_of (int) ;
 int smp_processor_id () ;
 struct tick_device* this_cpu_ptr (int *) ;
 int tick_cpu_device ;
 int tick_oneshot_notify () ;
 int tick_setup_device (struct tick_device*,struct clock_event_device*,int,int ) ;

void tick_install_replacement(struct clock_event_device *newdev)
{
 struct tick_device *td = this_cpu_ptr(&tick_cpu_device);
 int cpu = smp_processor_id();

 clockevents_exchange_device(td->evtdev, newdev);
 tick_setup_device(td, newdev, cpu, cpumask_of(cpu));
 if (newdev->features & CLOCK_EVT_FEAT_ONESHOT)
  tick_oneshot_notify();
}
