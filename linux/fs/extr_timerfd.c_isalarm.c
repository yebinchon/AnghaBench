
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timerfd_ctx {scalar_t__ clockid; } ;


 scalar_t__ CLOCK_BOOTTIME_ALARM ;
 scalar_t__ CLOCK_REALTIME_ALARM ;

__attribute__((used)) static inline bool isalarm(struct timerfd_ctx *ctx)
{
 return ctx->clockid == CLOCK_REALTIME_ALARM ||
  ctx->clockid == CLOCK_BOOTTIME_ALARM;
}
