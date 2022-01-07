
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int tmr; int alarm; } ;
struct timerfd_ctx {TYPE_3__ wqh; scalar_t__ tintv; TYPE_2__ t; int ticks; scalar_t__ expired; } ;
struct itimerspec64 {void* it_interval; void* it_value; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_4__ {struct timerfd_ctx* private_data; } ;


 int alarm_forward_now (int *,scalar_t__) ;
 int alarm_restart (int *) ;
 int fdput (struct fd) ;
 int hrtimer_forward_now (int *,scalar_t__) ;
 int hrtimer_restart (int *) ;
 scalar_t__ isalarm (struct timerfd_ctx*) ;
 void* ktime_to_timespec64 (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timerfd_fget (int,struct fd*) ;
 scalar_t__ timerfd_get_remaining (struct timerfd_ctx*) ;

__attribute__((used)) static int do_timerfd_gettime(int ufd, struct itimerspec64 *t)
{
 struct fd f;
 struct timerfd_ctx *ctx;
 int ret = timerfd_fget(ufd, &f);
 if (ret)
  return ret;
 ctx = f.file->private_data;

 spin_lock_irq(&ctx->wqh.lock);
 if (ctx->expired && ctx->tintv) {
  ctx->expired = 0;

  if (isalarm(ctx)) {
   ctx->ticks +=
    alarm_forward_now(
     &ctx->t.alarm, ctx->tintv) - 1;
   alarm_restart(&ctx->t.alarm);
  } else {
   ctx->ticks +=
    hrtimer_forward_now(&ctx->t.tmr, ctx->tintv)
    - 1;
   hrtimer_restart(&ctx->t.tmr);
  }
 }
 t->it_value = ktime_to_timespec64(timerfd_get_remaining(ctx));
 t->it_interval = ktime_to_timespec64(ctx->tintv);
 spin_unlock_irq(&ctx->wqh.lock);
 fdput(f);
 return 0;
}
