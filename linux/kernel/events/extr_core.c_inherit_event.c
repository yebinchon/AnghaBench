
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct task_struct {int dummy; } ;
struct pmu {int task_ctx_size; } ;
struct perf_event_context {int lock; scalar_t__ task_ctx_data; } ;
struct hw_perf_event {int period_left; void* last_period; void* sample_period; } ;
struct TYPE_2__ {scalar_t__ freq; } ;
struct perf_event {int state; int attach_state; int child_mutex; int child_list; int overflow_handler_context; int overflow_handler; struct perf_event_context* ctx; struct hw_perf_event hw; TYPE_1__ attr; int refcount; struct pmu* pmu; int cpu; struct perf_event* parent; } ;
typedef enum perf_event_state { ____Placeholder_perf_event_state } perf_event_state ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct perf_event*) ;
 int PERF_ATTACH_TASK_DATA ;
 int PERF_EVENT_STATE_INACTIVE ;
 int PERF_EVENT_STATE_OFF ;
 int add_event_to_ctx (struct perf_event*,struct perf_event_context*) ;
 int atomic_long_inc_not_zero (int *) ;
 int free_event (struct perf_event*) ;
 int get_ctx (struct perf_event_context*) ;
 scalar_t__ is_orphaned_event (struct perf_event*) ;
 scalar_t__ kzalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int local64_set (int *,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int perf_event__header_size (struct perf_event*) ;
 int perf_event__id_header_size (struct perf_event*) ;
 struct perf_event* perf_event_alloc (TYPE_1__*,int ,struct task_struct*,struct perf_event*,struct perf_event*,int *,int *,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct perf_event *
inherit_event(struct perf_event *parent_event,
       struct task_struct *parent,
       struct perf_event_context *parent_ctx,
       struct task_struct *child,
       struct perf_event *group_leader,
       struct perf_event_context *child_ctx)
{
 enum perf_event_state parent_state = parent_event->state;
 struct perf_event *child_event;
 unsigned long flags;







 if (parent_event->parent)
  parent_event = parent_event->parent;

 child_event = perf_event_alloc(&parent_event->attr,
        parent_event->cpu,
        child,
        group_leader, parent_event,
        ((void*)0), ((void*)0), -1);
 if (IS_ERR(child_event))
  return child_event;


 if ((child_event->attach_state & PERF_ATTACH_TASK_DATA) &&
     !child_ctx->task_ctx_data) {
  struct pmu *pmu = child_event->pmu;

  child_ctx->task_ctx_data = kzalloc(pmu->task_ctx_size,
         GFP_KERNEL);
  if (!child_ctx->task_ctx_data) {
   free_event(child_event);
   return ((void*)0);
  }
 }







 mutex_lock(&parent_event->child_mutex);
 if (is_orphaned_event(parent_event) ||
     !atomic_long_inc_not_zero(&parent_event->refcount)) {
  mutex_unlock(&parent_event->child_mutex);

  free_event(child_event);
  return ((void*)0);
 }

 get_ctx(child_ctx);






 if (parent_state >= PERF_EVENT_STATE_INACTIVE)
  child_event->state = PERF_EVENT_STATE_INACTIVE;
 else
  child_event->state = PERF_EVENT_STATE_OFF;

 if (parent_event->attr.freq) {
  u64 sample_period = parent_event->hw.sample_period;
  struct hw_perf_event *hwc = &child_event->hw;

  hwc->sample_period = sample_period;
  hwc->last_period = sample_period;

  local64_set(&hwc->period_left, sample_period);
 }

 child_event->ctx = child_ctx;
 child_event->overflow_handler = parent_event->overflow_handler;
 child_event->overflow_handler_context
  = parent_event->overflow_handler_context;




 perf_event__header_size(child_event);
 perf_event__id_header_size(child_event);




 raw_spin_lock_irqsave(&child_ctx->lock, flags);
 add_event_to_ctx(child_event, child_ctx);
 raw_spin_unlock_irqrestore(&child_ctx->lock, flags);




 list_add_tail(&child_event->child_list, &parent_event->child_list);
 mutex_unlock(&parent_event->child_mutex);

 return child_event;
}
