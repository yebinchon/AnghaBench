
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int lock; int pin_count; } ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void perf_unpin_context(struct perf_event_context *ctx)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&ctx->lock, flags);
 --ctx->pin_count;
 raw_spin_unlock_irqrestore(&ctx->lock, flags);
}
