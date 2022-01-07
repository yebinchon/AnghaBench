
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timerfd_ctx {int cancel_lock; } ;


 int __timerfd_remove_cancel (struct timerfd_ctx*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void timerfd_remove_cancel(struct timerfd_ctx *ctx)
{
 spin_lock(&ctx->cancel_lock);
 __timerfd_remove_cancel(ctx);
 spin_unlock(&ctx->cancel_lock);
}
