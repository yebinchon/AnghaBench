
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event_context {int time; } ;
struct perf_event {struct perf_event_context* ctx; } ;


 scalar_t__ is_cgroup_event (struct perf_event*) ;
 int perf_cgroup_event_time (struct perf_event*) ;

__attribute__((used)) static u64 perf_event_time(struct perf_event *event)
{
 struct perf_event_context *ctx = event->ctx;

 if (is_cgroup_event(event))
  return perf_cgroup_event_time(event);

 return ctx ? ctx->time : 0;
}
