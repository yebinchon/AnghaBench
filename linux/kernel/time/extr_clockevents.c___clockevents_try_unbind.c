
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int list; } ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;


 int EAGAIN ;
 int EBUSY ;
 scalar_t__ clockevent_state_detached (struct clock_event_device*) ;
 int list_del_init (int *) ;
 TYPE_1__ per_cpu (int ,int) ;
 int tick_cpu_device ;

__attribute__((used)) static int __clockevents_try_unbind(struct clock_event_device *ced, int cpu)
{

 if (clockevent_state_detached(ced)) {
  list_del_init(&ced->list);
  return 0;
 }

 return ced == per_cpu(tick_cpu_device, cpu).evtdev ? -EAGAIN : -EBUSY;
}
