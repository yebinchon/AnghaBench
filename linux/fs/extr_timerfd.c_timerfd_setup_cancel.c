
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timerfd_ctx {scalar_t__ clockid; int might_cancel; int cancel_lock; int clist; } ;


 scalar_t__ CLOCK_REALTIME ;
 scalar_t__ CLOCK_REALTIME_ALARM ;
 int TFD_TIMER_ABSTIME ;
 int TFD_TIMER_CANCEL_ON_SET ;
 int __timerfd_remove_cancel (struct timerfd_ctx*) ;
 int cancel_list ;
 int cancel_lock ;
 int list_add_rcu (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void timerfd_setup_cancel(struct timerfd_ctx *ctx, int flags)
{
 spin_lock(&ctx->cancel_lock);
 if ((ctx->clockid == CLOCK_REALTIME ||
      ctx->clockid == CLOCK_REALTIME_ALARM) &&
     (flags & TFD_TIMER_ABSTIME) && (flags & TFD_TIMER_CANCEL_ON_SET)) {
  if (!ctx->might_cancel) {
   ctx->might_cancel = 1;
   spin_lock(&cancel_lock);
   list_add_rcu(&ctx->clist, &cancel_list);
   spin_unlock(&cancel_lock);
  }
 } else {
  __timerfd_remove_cancel(ctx);
 }
 spin_unlock(&ctx->cancel_lock);
}
