
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int clockid_t ;


 int hrtimer_resolution ;

__attribute__((used)) static int posix_get_hrtimer_res(clockid_t which_clock, struct timespec64 *tp)
{
 tp->tv_sec = 0;
 tp->tv_nsec = hrtimer_resolution;
 return 0;
}
