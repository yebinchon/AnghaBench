
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
typedef int clockid_t ;


 int do_sys_settimeofday64 (struct timespec64 const*,int *) ;

__attribute__((used)) static int posix_clock_realtime_set(const clockid_t which_clock,
        const struct timespec64 *tp)
{
 return do_sys_settimeofday64(tp, ((void*)0));
}
