
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stop_event_data {scalar_t__ restart; struct perf_event* event; } ;
struct perf_event {TYPE_1__* pmu; int oncpu; int state; } ;
struct TYPE_2__ {int (* start ) (struct perf_event*,int ) ;int (* stop ) (struct perf_event*,int ) ;} ;


 int EAGAIN ;
 int PERF_EF_UPDATE ;
 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ smp_processor_id () ;
 int smp_rmb () ;
 int stub1 (struct perf_event*,int ) ;
 int stub2 (struct perf_event*,int ) ;

__attribute__((used)) static int __perf_event_stop(void *info)
{
 struct stop_event_data *sd = info;
 struct perf_event *event = sd->event;


 if (READ_ONCE(event->state) != PERF_EVENT_STATE_ACTIVE)
  return 0;


 smp_rmb();





 if (READ_ONCE(event->oncpu) != smp_processor_id())
  return -EAGAIN;

 event->pmu->stop(event, PERF_EF_UPDATE);
 if (sd->restart)
  event->pmu->start(event, 0);

 return 0;
}
