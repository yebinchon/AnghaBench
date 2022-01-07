
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tick_device {TYPE_2__* evtdev; } ;
struct clock_event_device {int next_event; } ;
typedef int ktime_t ;
struct TYPE_4__ {int (* event_handler ) (TYPE_2__*) ;} ;
struct TYPE_3__ {int evtdev; } ;


 scalar_t__ clockevent_state_oneshot (struct clock_event_device*) ;
 scalar_t__ clockevent_state_shutdown (int ) ;
 int clockevents_program_event (struct clock_event_device*,int ,int) ;
 int ktime_add (int ,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (TYPE_2__*) ;
 struct tick_device* this_cpu_ptr (int *) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_lock ;
 int tick_cpu_device ;
 int tick_do_periodic_broadcast () ;
 int tick_period ;

__attribute__((used)) static void tick_handle_periodic_broadcast(struct clock_event_device *dev)
{
 struct tick_device *td = this_cpu_ptr(&tick_cpu_device);
 bool bc_local;

 raw_spin_lock(&tick_broadcast_lock);


 if (clockevent_state_shutdown(tick_broadcast_device.evtdev)) {
  raw_spin_unlock(&tick_broadcast_lock);
  return;
 }

 bc_local = tick_do_periodic_broadcast();

 if (clockevent_state_oneshot(dev)) {
  ktime_t next = ktime_add(dev->next_event, tick_period);

  clockevents_program_event(dev, next, 1);
 }
 raw_spin_unlock(&tick_broadcast_lock);






 if (bc_local)
  td->evtdev->event_handler(td->evtdev);
}
