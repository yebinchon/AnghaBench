
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct eventfd_ctx {scalar_t__ count; TYPE_1__ wqh; } ;
typedef scalar_t__ __u64 ;


 int EPOLLIN ;
 scalar_t__ ULLONG_MAX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ waitqueue_active (TYPE_1__*) ;
 int wake_up_locked_poll (TYPE_1__*,int ) ;

__u64 eventfd_signal(struct eventfd_ctx *ctx, __u64 n)
{
 unsigned long flags;

 spin_lock_irqsave(&ctx->wqh.lock, flags);
 if (ULLONG_MAX - ctx->count < n)
  n = ULLONG_MAX - ctx->count;
 ctx->count += n;
 if (waitqueue_active(&ctx->wqh))
  wake_up_locked_poll(&ctx->wqh, EPOLLIN);
 spin_unlock_irqrestore(&ctx->wqh.lock, flags);

 return n;
}
