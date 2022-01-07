
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tick_device {scalar_t__ mode; struct clock_event_device* evtdev; } ;
struct cpumask {int dummy; } ;
struct clock_event_device {void (* event_handler ) (struct clock_event_device*) ;int irq; int cpumask; int next_event; } ;
typedef int ktime_t ;


 int HZ ;
 int NSEC_PER_SEC ;
 scalar_t__ TICKDEV_MODE_PERIODIC ;
 int TICK_DO_TIMER_BOOT ;
 int WARN_ON (int) ;
 void clockevents_handle_noop (struct clock_event_device*) ;
 int cpumask_equal (int ,struct cpumask const*) ;
 int irq_set_affinity (int ,struct cpumask const*) ;
 int ktime_get () ;
 scalar_t__ tick_device_uses_broadcast (struct clock_event_device*,int) ;
 int tick_do_timer_boot_cpu ;
 int tick_do_timer_cpu ;
 int tick_next_period ;
 scalar_t__ tick_nohz_full_cpu (int) ;
 int tick_period ;
 int tick_setup_oneshot (struct clock_event_device*,void (*) (struct clock_event_device*),int ) ;
 int tick_setup_periodic (struct clock_event_device*,int ) ;
 int tick_take_do_timer_from_boot () ;

__attribute__((used)) static void tick_setup_device(struct tick_device *td,
         struct clock_event_device *newdev, int cpu,
         const struct cpumask *cpumask)
{
 void (*handler)(struct clock_event_device *) = ((void*)0);
 ktime_t next_event = 0;




 if (!td->evtdev) {




  if (tick_do_timer_cpu == TICK_DO_TIMER_BOOT) {
   tick_do_timer_cpu = cpu;

   tick_next_period = ktime_get();
   tick_period = NSEC_PER_SEC / HZ;
  }




  td->mode = TICKDEV_MODE_PERIODIC;
 } else {
  handler = td->evtdev->event_handler;
  next_event = td->evtdev->next_event;
  td->evtdev->event_handler = clockevents_handle_noop;
 }

 td->evtdev = newdev;





 if (!cpumask_equal(newdev->cpumask, cpumask))
  irq_set_affinity(newdev->irq, cpumask);
 if (tick_device_uses_broadcast(newdev, cpu))
  return;

 if (td->mode == TICKDEV_MODE_PERIODIC)
  tick_setup_periodic(newdev, 0);
 else
  tick_setup_oneshot(newdev, handler, next_event);
}
