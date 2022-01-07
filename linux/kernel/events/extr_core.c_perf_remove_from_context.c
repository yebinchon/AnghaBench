
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int lock; int mutex; } ;
struct perf_event {int attach_state; struct perf_event_context* ctx; } ;


 unsigned long DETACH_GROUP ;
 int PERF_ATTACH_CONTEXT ;
 int PERF_ATTACH_GROUP ;
 int WARN_ON_ONCE (int) ;
 int __perf_remove_from_context ;
 int event_function_call (struct perf_event*,int ,void*) ;
 int lockdep_assert_held (int *) ;
 int perf_group_detach (struct perf_event*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;

__attribute__((used)) static void perf_remove_from_context(struct perf_event *event, unsigned long flags)
{
 struct perf_event_context *ctx = event->ctx;

 lockdep_assert_held(&ctx->mutex);

 event_function_call(event, __perf_remove_from_context, (void *)flags);







 WARN_ON_ONCE(event->attach_state & PERF_ATTACH_CONTEXT);
 if ((flags & DETACH_GROUP) &&
     (event->attach_state & PERF_ATTACH_GROUP)) {




  raw_spin_lock_irq(&ctx->lock);
  perf_group_detach(event);
  raw_spin_unlock_irq(&ctx->lock);
 }
}
