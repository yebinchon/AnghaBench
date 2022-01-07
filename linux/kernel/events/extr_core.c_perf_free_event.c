
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int lock; } ;
struct perf_event {int child_mutex; int child_list; struct perf_event* parent; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int free_event (struct perf_event*) ;
 int list_del_event (struct perf_event*,struct perf_event_context*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int perf_group_detach (struct perf_event*) ;
 int put_event (struct perf_event*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;

__attribute__((used)) static void perf_free_event(struct perf_event *event,
       struct perf_event_context *ctx)
{
 struct perf_event *parent = event->parent;

 if (WARN_ON_ONCE(!parent))
  return;

 mutex_lock(&parent->child_mutex);
 list_del_init(&event->child_list);
 mutex_unlock(&parent->child_mutex);

 put_event(parent);

 raw_spin_lock_irq(&ctx->lock);
 perf_group_detach(event);
 list_del_event(event, ctx);
 raw_spin_unlock_irq(&ctx->lock);
 free_event(event);
}
