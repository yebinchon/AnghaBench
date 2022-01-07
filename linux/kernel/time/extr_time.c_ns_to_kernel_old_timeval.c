
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suseconds_t ;
struct timespec64 {scalar_t__ tv_nsec; int tv_sec; } ;
struct __kernel_old_timeval {int tv_usec; int tv_sec; } ;
typedef int s64 ;


 struct timespec64 ns_to_timespec64 (int const) ;

struct __kernel_old_timeval ns_to_kernel_old_timeval(const s64 nsec)
{
 struct timespec64 ts = ns_to_timespec64(nsec);
 struct __kernel_old_timeval tv;

 tv.tv_sec = ts.tv_sec;
 tv.tv_usec = (suseconds_t)ts.tv_nsec / 1000;

 return tv;
}
