
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ BW_SHIFT ;
 unsigned long BW_UNIT ;
 scalar_t__ RUNTIME_INF ;
 unsigned long div64_u64 (scalar_t__,scalar_t__) ;

unsigned long to_ratio(u64 period, u64 runtime)
{
 if (runtime == RUNTIME_INF)
  return BW_UNIT;






 if (period == 0)
  return 0;

 return div64_u64(runtime << BW_SHIFT, period);
}
