
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {scalar_t__ event_handler; int next_event; } ;
typedef int ktime_t ;


 int clockevent_state_oneshot (struct clock_event_device*) ;
 int clockevents_program_event (struct clock_event_device*,int ,int) ;
 int ktime_add (int ,int ) ;
 int smp_processor_id () ;
 int tick_period ;
 int tick_periodic (int) ;
 scalar_t__ timekeeping_valid_for_hres () ;

void tick_handle_periodic(struct clock_event_device *dev)
{
 int cpu = smp_processor_id();
 ktime_t next = dev->next_event;

 tick_periodic(cpu);
 if (!clockevent_state_oneshot(dev))
  return;
 for (;;) {




  next = ktime_add(next, tick_period);

  if (!clockevents_program_event(dev, next, 0))
   return;
  if (timekeeping_valid_for_hres())
   tick_periodic(cpu);
 }
}
