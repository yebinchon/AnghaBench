
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int inherit_stat; } ;
struct perf_event {scalar_t__ state; int total_time_running; int total_time_enabled; int count; TYPE_2__* pmu; TYPE_1__ attr; } ;
struct TYPE_4__ {int (* read ) (struct perf_event*) ;} ;


 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 int local64_read (int *) ;
 int local64_set (int *,int ) ;
 int local64_xchg (int *,int ) ;
 int perf_event_update_time (struct perf_event*) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int stub1 (struct perf_event*) ;
 int swap (int ,int ) ;

__attribute__((used)) static void __perf_event_sync_stat(struct perf_event *event,
         struct perf_event *next_event)
{
 u64 value;

 if (!event->attr.inherit_stat)
  return;
 if (event->state == PERF_EVENT_STATE_ACTIVE)
  event->pmu->read(event);

 perf_event_update_time(event);





 value = local64_read(&next_event->count);
 value = local64_xchg(&event->count, value);
 local64_set(&next_event->count, value);

 swap(event->total_time_enabled, next_event->total_time_enabled);
 swap(event->total_time_running, next_event->total_time_running);




 perf_event_update_userpage(event);
 perf_event_update_userpage(next_event);
}
