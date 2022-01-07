
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long s64 ;


 long long RATELIMIT_CALC_SHIFT ;
 long long clamp (long long,long long,long long) ;
 long div64_s64 (long long,unsigned long) ;

__attribute__((used)) static long long pos_ratio_polynom(unsigned long setpoint,
       unsigned long dirty,
       unsigned long limit)
{
 long long pos_ratio;
 long x;

 x = div64_s64(((s64)setpoint - (s64)dirty) << RATELIMIT_CALC_SHIFT,
        (limit - setpoint) | 1);
 pos_ratio = x;
 pos_ratio = pos_ratio * x >> RATELIMIT_CALC_SHIFT;
 pos_ratio = pos_ratio * x >> RATELIMIT_CALC_SHIFT;
 pos_ratio += 1 << RATELIMIT_CALC_SHIFT;

 return clamp(pos_ratio, 0LL, 2LL << RATELIMIT_CALC_SHIFT);
}
