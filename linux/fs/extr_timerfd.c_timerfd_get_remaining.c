
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tmr; int alarm; } ;
struct timerfd_ctx {TYPE_1__ t; } ;
typedef scalar_t__ ktime_t ;


 scalar_t__ alarm_expires_remaining (int *) ;
 scalar_t__ hrtimer_expires_remaining_adjusted (int *) ;
 scalar_t__ isalarm (struct timerfd_ctx*) ;

__attribute__((used)) static ktime_t timerfd_get_remaining(struct timerfd_ctx *ctx)
{
 ktime_t remaining;

 if (isalarm(ctx))
  remaining = alarm_expires_remaining(&ctx->t.alarm);
 else
  remaining = hrtimer_expires_remaining_adjusted(&ctx->t.tmr);

 return remaining < 0 ? 0: remaining;
}
