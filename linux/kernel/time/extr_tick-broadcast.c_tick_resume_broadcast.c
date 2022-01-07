
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int mode; struct clock_event_device* evtdev; } ;




 int clockevents_tick_resume (struct clock_event_device*) ;
 int cpumask_empty (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_lock ;
 int tick_broadcast_mask ;
 int tick_broadcast_start_periodic (struct clock_event_device*) ;
 int tick_resume_broadcast_oneshot (struct clock_event_device*) ;

void tick_resume_broadcast(void)
{
 struct clock_event_device *bc;
 unsigned long flags;

 raw_spin_lock_irqsave(&tick_broadcast_lock, flags);

 bc = tick_broadcast_device.evtdev;

 if (bc) {
  clockevents_tick_resume(bc);

  switch (tick_broadcast_device.mode) {
  case 128:
   if (!cpumask_empty(tick_broadcast_mask))
    tick_broadcast_start_periodic(bc);
   break;
  case 129:
   if (!cpumask_empty(tick_broadcast_mask))
    tick_resume_broadcast_oneshot(bc);
   break;
  }
 }
 raw_spin_unlock_irqrestore(&tick_broadcast_lock, flags);
}
