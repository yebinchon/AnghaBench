
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct perf_event_context** perf_event_ctxp; } ;
struct perf_event_context {int pmu; } ;
struct TYPE_2__ {int inherit; } ;
struct perf_event {TYPE_1__ attr; } ;


 int ENOMEM ;
 struct perf_event_context* alloc_perf_context (int ,struct task_struct*) ;
 int inherit_group (struct perf_event*,struct task_struct*,struct perf_event_context*,struct task_struct*,struct perf_event_context*) ;

__attribute__((used)) static int
inherit_task_group(struct perf_event *event, struct task_struct *parent,
     struct perf_event_context *parent_ctx,
     struct task_struct *child, int ctxn,
     int *inherited_all)
{
 int ret;
 struct perf_event_context *child_ctx;

 if (!event->attr.inherit) {
  *inherited_all = 0;
  return 0;
 }

 child_ctx = child->perf_event_ctxp[ctxn];
 if (!child_ctx) {






  child_ctx = alloc_perf_context(parent_ctx->pmu, child);
  if (!child_ctx)
   return -ENOMEM;

  child->perf_event_ctxp[ctxn] = child_ctx;
 }

 ret = inherit_group(event, parent, parent_ctx,
       child, child_ctx);

 if (ret)
  *inherited_all = 0;

 return ret;
}
