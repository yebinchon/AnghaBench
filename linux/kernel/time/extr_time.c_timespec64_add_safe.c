
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timeu64_t ;
struct timespec64 {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;


 scalar_t__ TIME64_MAX ;
 int set_normalized_timespec64 (struct timespec64*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

struct timespec64 timespec64_add_safe(const struct timespec64 lhs,
    const struct timespec64 rhs)
{
 struct timespec64 res;

 set_normalized_timespec64(&res, (timeu64_t) lhs.tv_sec + rhs.tv_sec,
   lhs.tv_nsec + rhs.tv_nsec);

 if (unlikely(res.tv_sec < lhs.tv_sec || res.tv_sec < rhs.tv_sec)) {
  res.tv_sec = TIME64_MAX;
  res.tv_nsec = 0;
 }

 return res;
}
