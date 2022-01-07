
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct timerfd_ctx {int expired; TYPE_1__ wqh; int ticks; } ;


 int EPOLLIN ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_locked_poll (TYPE_1__*,int ) ;

__attribute__((used)) static void timerfd_triggered(struct timerfd_ctx *ctx)
{
 unsigned long flags;

 spin_lock_irqsave(&ctx->wqh.lock, flags);
 ctx->expired = 1;
 ctx->ticks++;
 wake_up_locked_poll(&ctx->wqh, EPOLLIN);
 spin_unlock_irqrestore(&ctx->wqh.lock, flags);
}
