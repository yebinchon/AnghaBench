
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int PERF_EF_UPDATE ;
 int task_clock_event_stop (struct perf_event*,int ) ;

__attribute__((used)) static void task_clock_event_del(struct perf_event *event, int flags)
{
 task_clock_event_stop(event, PERF_EF_UPDATE);
}
