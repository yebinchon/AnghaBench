
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int function; } ;
struct TYPE_5__ {TYPE_2__ tmr; int alarm; } ;
struct timerfd_ctx {int clockid; int settime_flags; TYPE_1__ t; void* tintv; scalar_t__ ticks; scalar_t__ expired; } ;
struct itimerspec64 {int it_interval; int it_value; } ;
typedef scalar_t__ ktime_t ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;


 int ALARM_BOOTTIME ;
 int ALARM_REALTIME ;
 int CLOCK_REALTIME_ALARM ;
 int ECANCELED ;
 int HRTIMER_MODE_ABS ;
 int HRTIMER_MODE_REL ;
 int TFD_SETTIME_FLAGS ;
 int TFD_TIMER_ABSTIME ;
 int alarm_init (int *,int ,int ) ;
 int alarm_start (int *,scalar_t__) ;
 int alarm_start_relative (int *,scalar_t__) ;
 int hrtimer_init (TYPE_2__*,int,int) ;
 int hrtimer_set_expires (TYPE_2__*,scalar_t__) ;
 int hrtimer_start (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ isalarm (struct timerfd_ctx*) ;
 int timerfd_alarmproc ;
 scalar_t__ timerfd_canceled (struct timerfd_ctx*) ;
 int timerfd_tmrproc ;
 void* timespec64_to_ktime (int ) ;

__attribute__((used)) static int timerfd_setup(struct timerfd_ctx *ctx, int flags,
    const struct itimerspec64 *ktmr)
{
 enum hrtimer_mode htmode;
 ktime_t texp;
 int clockid = ctx->clockid;

 htmode = (flags & TFD_TIMER_ABSTIME) ?
  HRTIMER_MODE_ABS: HRTIMER_MODE_REL;

 texp = timespec64_to_ktime(ktmr->it_value);
 ctx->expired = 0;
 ctx->ticks = 0;
 ctx->tintv = timespec64_to_ktime(ktmr->it_interval);

 if (isalarm(ctx)) {
  alarm_init(&ctx->t.alarm,
      ctx->clockid == CLOCK_REALTIME_ALARM ?
      ALARM_REALTIME : ALARM_BOOTTIME,
      timerfd_alarmproc);
 } else {
  hrtimer_init(&ctx->t.tmr, clockid, htmode);
  hrtimer_set_expires(&ctx->t.tmr, texp);
  ctx->t.tmr.function = timerfd_tmrproc;
 }

 if (texp != 0) {
  if (isalarm(ctx)) {
   if (flags & TFD_TIMER_ABSTIME)
    alarm_start(&ctx->t.alarm, texp);
   else
    alarm_start_relative(&ctx->t.alarm, texp);
  } else {
   hrtimer_start(&ctx->t.tmr, texp, htmode);
  }

  if (timerfd_canceled(ctx))
   return -ECANCELED;
 }

 ctx->settime_flags = flags & TFD_SETTIME_FLAGS;
 return 0;
}
