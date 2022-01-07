
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timerfd_ctx {scalar_t__ moffs; int might_cancel; } ;


 scalar_t__ KTIME_MAX ;
 scalar_t__ ktime_mono_to_real (int ) ;

__attribute__((used)) static bool timerfd_canceled(struct timerfd_ctx *ctx)
{
 if (!ctx->might_cancel || ctx->moffs != KTIME_MAX)
  return 0;
 ctx->moffs = ktime_mono_to_real(0);
 return 1;
}
