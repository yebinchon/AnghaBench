
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct perf_event_context {scalar_t__ task; int lock; } ;
struct perf_event {TYPE_4__* cgrp; struct perf_event_context* ctx; } ;
struct TYPE_5__ {int lock; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; TYPE_1__ ctx; } ;
struct TYPE_6__ {int cgroup; } ;
struct perf_cgroup {TYPE_2__ css; } ;
struct TYPE_7__ {int cgroup; } ;
struct TYPE_8__ {TYPE_3__ css; } ;


 int ESRCH ;
 int EVENT_TIME ;
 int WARN_ON_ONCE (int) ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 int add_event_to_ctx (struct perf_event*,struct perf_event_context*) ;
 int cgroup_is_descendant (int ,int ) ;
 int ctx_resched (struct perf_cpu_context*,struct perf_event_context*,int ) ;
 int ctx_sched_out (struct perf_event_context*,struct perf_cpu_context*,int ) ;
 scalar_t__ current ;
 int get_event_type (struct perf_event*) ;
 scalar_t__ is_cgroup_event (struct perf_event*) ;
 struct perf_cgroup* perf_cgroup_from_task (scalar_t__,struct perf_event_context*) ;
 int perf_ctx_unlock (struct perf_cpu_context*,struct perf_event_context*) ;
 int raw_spin_lock (int *) ;
 scalar_t__ task_curr (scalar_t__) ;

__attribute__((used)) static int __perf_install_in_context(void *info)
{
 struct perf_event *event = info;
 struct perf_event_context *ctx = event->ctx;
 struct perf_cpu_context *cpuctx = __get_cpu_context(ctx);
 struct perf_event_context *task_ctx = cpuctx->task_ctx;
 bool reprogram = 1;
 int ret = 0;

 raw_spin_lock(&cpuctx->ctx.lock);
 if (ctx->task) {
  raw_spin_lock(&ctx->lock);
  task_ctx = ctx;

  reprogram = (ctx->task == current);
  if (task_curr(ctx->task) && !reprogram) {
   ret = -ESRCH;
   goto unlock;
  }

  WARN_ON_ONCE(reprogram && cpuctx->task_ctx && cpuctx->task_ctx != ctx);
 } else if (task_ctx) {
  raw_spin_lock(&task_ctx->lock);
 }
 if (reprogram) {
  ctx_sched_out(ctx, cpuctx, EVENT_TIME);
  add_event_to_ctx(event, ctx);
  ctx_resched(cpuctx, task_ctx, get_event_type(event));
 } else {
  add_event_to_ctx(event, ctx);
 }

unlock:
 perf_ctx_unlock(cpuctx, task_ctx);

 return ret;
}
