
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_event_context {int nr_freq; int nr_active; int lock; } ;
struct TYPE_4__ {scalar_t__ exclusive; scalar_t__ sample_freq; scalar_t__ freq; } ;
struct perf_event {scalar_t__ state; int oncpu; TYPE_2__* pmu; TYPE_1__ attr; int pending_disable; int active_list; struct perf_event_context* ctx; } ;
struct perf_cpu_context {scalar_t__ exclusive; int active_oncpu; } ;
typedef enum perf_event_state { ____Placeholder_perf_event_state } perf_event_state ;
struct TYPE_5__ {int (* del ) (struct perf_event*,int ) ;} ;


 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 int PERF_EVENT_STATE_INACTIVE ;
 int PERF_EVENT_STATE_OFF ;
 scalar_t__ READ_ONCE (int ) ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (int ,int) ;
 int is_software_event (struct perf_event*) ;
 int list_del_init (int *) ;
 int lockdep_assert_held (int *) ;
 int perf_event_ctx_deactivate (struct perf_event_context*) ;
 int perf_event_set_state (struct perf_event*,int) ;
 int perf_pmu_disable (TYPE_2__*) ;
 int perf_pmu_enable (TYPE_2__*) ;
 int stub1 (struct perf_event*,int ) ;

__attribute__((used)) static void
event_sched_out(struct perf_event *event,
    struct perf_cpu_context *cpuctx,
    struct perf_event_context *ctx)
{
 enum perf_event_state state = PERF_EVENT_STATE_INACTIVE;

 WARN_ON_ONCE(event->ctx != ctx);
 lockdep_assert_held(&ctx->lock);

 if (event->state != PERF_EVENT_STATE_ACTIVE)
  return;






 list_del_init(&event->active_list);

 perf_pmu_disable(event->pmu);

 event->pmu->del(event, 0);
 event->oncpu = -1;

 if (READ_ONCE(event->pending_disable) >= 0) {
  WRITE_ONCE(event->pending_disable, -1);
  state = PERF_EVENT_STATE_OFF;
 }
 perf_event_set_state(event, state);

 if (!is_software_event(event))
  cpuctx->active_oncpu--;
 if (!--ctx->nr_active)
  perf_event_ctx_deactivate(ctx);
 if (event->attr.freq && event->attr.sample_freq)
  ctx->nr_freq--;
 if (event->attr.exclusive || !cpuctx->active_oncpu)
  cpuctx->exclusive = 0;

 perf_pmu_enable(event->pmu);
}
