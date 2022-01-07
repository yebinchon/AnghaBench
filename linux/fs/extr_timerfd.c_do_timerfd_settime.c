
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int lock; } ;
struct TYPE_9__ {int timer; } ;
struct TYPE_7__ {int tmr; TYPE_4__ alarm; } ;
struct timerfd_ctx {TYPE_3__ wqh; scalar_t__ tintv; TYPE_2__ t; scalar_t__ expired; } ;
struct itimerspec64 {void* it_interval; void* it_value; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_6__ {struct timerfd_ctx* private_data; } ;


 int CAP_WAKE_ALARM ;
 int EINVAL ;
 int EPERM ;
 int TFD_SETTIME_FLAGS ;
 int alarm_forward_now (TYPE_4__*,scalar_t__) ;
 scalar_t__ alarm_try_to_cancel (TYPE_4__*) ;
 int capable (int ) ;
 int fdput (struct fd) ;
 int hrtimer_cancel_wait_running (int *) ;
 int hrtimer_forward_now (int *,scalar_t__) ;
 scalar_t__ hrtimer_try_to_cancel (int *) ;
 scalar_t__ isalarm (struct timerfd_ctx*) ;
 int itimerspec64_valid (struct itimerspec64 const*) ;
 void* ktime_to_timespec64 (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timerfd_fget (int,struct fd*) ;
 scalar_t__ timerfd_get_remaining (struct timerfd_ctx*) ;
 int timerfd_setup (struct timerfd_ctx*,int,struct itimerspec64 const*) ;
 int timerfd_setup_cancel (struct timerfd_ctx*,int) ;

__attribute__((used)) static int do_timerfd_settime(int ufd, int flags,
  const struct itimerspec64 *new,
  struct itimerspec64 *old)
{
 struct fd f;
 struct timerfd_ctx *ctx;
 int ret;

 if ((flags & ~TFD_SETTIME_FLAGS) ||
   !itimerspec64_valid(new))
  return -EINVAL;

 ret = timerfd_fget(ufd, &f);
 if (ret)
  return ret;
 ctx = f.file->private_data;

 if (isalarm(ctx) && !capable(CAP_WAKE_ALARM)) {
  fdput(f);
  return -EPERM;
 }

 timerfd_setup_cancel(ctx, flags);





 for (;;) {
  spin_lock_irq(&ctx->wqh.lock);

  if (isalarm(ctx)) {
   if (alarm_try_to_cancel(&ctx->t.alarm) >= 0)
    break;
  } else {
   if (hrtimer_try_to_cancel(&ctx->t.tmr) >= 0)
    break;
  }
  spin_unlock_irq(&ctx->wqh.lock);

  if (isalarm(ctx))
   hrtimer_cancel_wait_running(&ctx->t.alarm.timer);
  else
   hrtimer_cancel_wait_running(&ctx->t.tmr);
 }







 if (ctx->expired && ctx->tintv) {
  if (isalarm(ctx))
   alarm_forward_now(&ctx->t.alarm, ctx->tintv);
  else
   hrtimer_forward_now(&ctx->t.tmr, ctx->tintv);
 }

 old->it_value = ktime_to_timespec64(timerfd_get_remaining(ctx));
 old->it_interval = ktime_to_timespec64(ctx->tintv);




 ret = timerfd_setup(ctx, flags, new);

 spin_unlock_irq(&ctx->wqh.lock);
 fdput(f);
 return ret;
}
