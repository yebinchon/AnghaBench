
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {TYPE_1__* ctx; } ;
struct TYPE_2__ {int time; } ;


 int perf_swevent_cancel_hrtimer (struct perf_event*) ;
 int task_clock_event_update (struct perf_event*,int ) ;

__attribute__((used)) static void task_clock_event_stop(struct perf_event *event, int flags)
{
 perf_swevent_cancel_hrtimer(event);
 task_clock_event_update(event, event->ctx->time);
}
