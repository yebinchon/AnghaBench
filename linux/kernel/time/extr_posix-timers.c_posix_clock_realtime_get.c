
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef int clockid_t ;


 int ktime_get_real_ts64 (struct timespec64*) ;

__attribute__((used)) static int posix_clock_realtime_get(clockid_t which_clock, struct timespec64 *tp)
{
 ktime_get_real_ts64(tp);
 return 0;
}
