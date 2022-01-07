
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stop_event_data {int restart; struct perf_event* event; } ;
struct perf_event {int oncpu; int state; } ;


 int EAGAIN ;
 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 scalar_t__ READ_ONCE (int ) ;
 int __perf_event_stop ;
 int cpu_function_call (scalar_t__,int ,struct stop_event_data*) ;
 int smp_rmb () ;

__attribute__((used)) static int perf_event_stop(struct perf_event *event, int restart)
{
 struct stop_event_data sd = {
  .event = event,
  .restart = restart,
 };
 int ret = 0;

 do {
  if (READ_ONCE(event->state) != PERF_EVENT_STATE_ACTIVE)
   return 0;


  smp_rmb();






  ret = cpu_function_call(READ_ONCE(event->oncpu),
     __perf_event_stop, &sd);
 } while (ret == -EAGAIN);

 return ret;
}
