
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef int clockid_t ;


 int KTIME_LOW_RES ;
 struct timespec64 ktime_to_timespec64 (int ) ;

__attribute__((used)) static int posix_get_coarse_res(const clockid_t which_clock, struct timespec64 *tp)
{
 *tp = ktime_to_timespec64(KTIME_LOW_RES);
 return 0;
}
