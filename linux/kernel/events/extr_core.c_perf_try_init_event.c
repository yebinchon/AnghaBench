
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {scalar_t__ task_ctx_nr; int (* event_init ) (struct perf_event*) ;int capabilities; int module; } ;
struct perf_event_context {int dummy; } ;
struct perf_event {int (* destroy ) (struct perf_event*) ;struct perf_event* group_leader; struct pmu* pmu; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int PERF_PMU_CAP_EXTENDED_REGS ;
 int PERF_PMU_CAP_NO_EXCLUDE ;
 int SINGLE_DEPTH_NESTING ;
 scalar_t__ event_has_any_exclude_flag (struct perf_event*) ;
 scalar_t__ has_extended_regs (struct perf_event*) ;
 int module_put (int ) ;
 struct perf_event_context* perf_event_ctx_lock_nested (struct perf_event*,int ) ;
 int perf_event_ctx_unlock (struct perf_event*,struct perf_event_context*) ;
 scalar_t__ perf_sw_context ;
 int stub1 (struct perf_event*) ;
 int stub2 (struct perf_event*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int perf_try_init_event(struct pmu *pmu, struct perf_event *event)
{
 struct perf_event_context *ctx = ((void*)0);
 int ret;

 if (!try_module_get(pmu->module))
  return -ENODEV;







 if (event->group_leader != event && pmu->task_ctx_nr != perf_sw_context) {




  ctx = perf_event_ctx_lock_nested(event->group_leader,
       SINGLE_DEPTH_NESTING);
  BUG_ON(!ctx);
 }

 event->pmu = pmu;
 ret = pmu->event_init(event);

 if (ctx)
  perf_event_ctx_unlock(event->group_leader, ctx);

 if (!ret) {
  if (!(pmu->capabilities & PERF_PMU_CAP_EXTENDED_REGS) &&
      has_extended_regs(event))
   ret = -EOPNOTSUPP;

  if (pmu->capabilities & PERF_PMU_CAP_NO_EXCLUDE &&
      event_has_any_exclude_flag(event))
   ret = -EINVAL;

  if (ret && event->destroy)
   event->destroy(event);
 }

 if (ret)
  module_put(pmu->module);

 return ret;
}
