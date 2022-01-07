
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int lock; } ;
struct perf_event {scalar_t__ state; struct perf_event_context* ctx; } ;


 scalar_t__ PERF_EVENT_STATE_ERROR ;
 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 scalar_t__ PERF_EVENT_STATE_OFF ;
 int __perf_event_enable ;
 int event_function_call (struct perf_event*,int ,int *) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;

__attribute__((used)) static void _perf_event_enable(struct perf_event *event)
{
 struct perf_event_context *ctx = event->ctx;

 raw_spin_lock_irq(&ctx->lock);
 if (event->state >= PERF_EVENT_STATE_INACTIVE ||
     event->state < PERF_EVENT_STATE_ERROR) {
  raw_spin_unlock_irq(&ctx->lock);
  return;
 }
 if (event->state == PERF_EVENT_STATE_ERROR)
  event->state = PERF_EVENT_STATE_OFF;
 raw_spin_unlock_irq(&ctx->lock);

 event_function_call(event, __perf_event_enable, ((void*)0));
}
