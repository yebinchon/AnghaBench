
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct perf_event_context {int lock; int is_active; } ;
struct perf_event {int child_mutex; int child_list; TYPE_1__* ctx; struct perf_event* parent; } ;
struct TYPE_2__ {int parent_ctx; } ;


 int PERF_EVENT_STATE_EXIT ;
 int WARN_ON_ONCE (int ) ;
 int free_event (struct perf_event*) ;
 int list_del_event (struct perf_event*,struct perf_event_context*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int perf_event_set_state (struct perf_event*,int ) ;
 int perf_event_wakeup (struct perf_event*) ;
 int perf_group_detach (struct perf_event*) ;
 int put_event (struct perf_event*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int sync_child_event (struct perf_event*,struct task_struct*) ;

__attribute__((used)) static void
perf_event_exit_event(struct perf_event *child_event,
        struct perf_event_context *child_ctx,
        struct task_struct *child)
{
 struct perf_event *parent_event = child_event->parent;
 raw_spin_lock_irq(&child_ctx->lock);
 WARN_ON_ONCE(child_ctx->is_active);

 if (parent_event)
  perf_group_detach(child_event);
 list_del_event(child_event, child_ctx);
 perf_event_set_state(child_event, PERF_EVENT_STATE_EXIT);
 raw_spin_unlock_irq(&child_ctx->lock);




 if (!parent_event) {
  perf_event_wakeup(child_event);
  return;
 }




 sync_child_event(child_event, child);




 WARN_ON_ONCE(parent_event->ctx->parent_ctx);
 mutex_lock(&parent_event->child_mutex);
 list_del_init(&child_event->child_list);
 mutex_unlock(&parent_event->child_mutex);




 perf_event_wakeup(parent_event);
 free_event(child_event);
 put_event(parent_event);
}
