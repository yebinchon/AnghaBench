
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {scalar_t__ timestamp; } ;
struct perf_event {scalar_t__ tstamp; scalar_t__ shadow_ctx_time; } ;


 scalar_t__ is_cgroup_event (struct perf_event*) ;
 int perf_cgroup_set_shadow_time (struct perf_event*,scalar_t__) ;

__attribute__((used)) static void perf_set_shadow_time(struct perf_event *event,
     struct perf_event_context *ctx)
{
 if (is_cgroup_event(event))
  perf_cgroup_set_shadow_time(event, event->tstamp);
 else
  event->shadow_ctx_time = event->tstamp - ctx->timestamp;
}
