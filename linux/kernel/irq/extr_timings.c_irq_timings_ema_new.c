
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int EMA_ALPHA_SHIFT ;
 int EMA_ALPHA_VAL ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u64 irq_timings_ema_new(u64 value, u64 ema_old)
{
 s64 diff;

 if (unlikely(!ema_old))
  return value;

 diff = (value - ema_old) * EMA_ALPHA_VAL;






 return ema_old + (diff >> EMA_ALPHA_SHIFT);
}
