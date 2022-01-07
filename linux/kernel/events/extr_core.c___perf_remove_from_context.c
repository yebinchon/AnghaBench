
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int is_active; scalar_t__ task; int nr_events; } ;
struct perf_event {int dummy; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;


 unsigned long DETACH_GROUP ;
 int EVENT_TIME ;
 int WARN_ON_ONCE (int) ;
 int event_sched_out (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ;
 int list_del_event (struct perf_event*,struct perf_event_context*) ;
 int perf_group_detach (struct perf_event*) ;
 int update_cgrp_time_from_cpuctx (struct perf_cpu_context*) ;
 int update_context_time (struct perf_event_context*) ;

__attribute__((used)) static void
__perf_remove_from_context(struct perf_event *event,
      struct perf_cpu_context *cpuctx,
      struct perf_event_context *ctx,
      void *info)
{
 unsigned long flags = (unsigned long)info;

 if (ctx->is_active & EVENT_TIME) {
  update_context_time(ctx);
  update_cgrp_time_from_cpuctx(cpuctx);
 }

 event_sched_out(event, cpuctx, ctx);
 if (flags & DETACH_GROUP)
  perf_group_detach(event);
 list_del_event(event, ctx);

 if (!ctx->nr_events && ctx->is_active) {
  ctx->is_active = 0;
  if (ctx->task) {
   WARN_ON_ONCE(cpuctx->task_ctx != ctx);
   cpuctx->task_ctx = ((void*)0);
  }
 }
}
