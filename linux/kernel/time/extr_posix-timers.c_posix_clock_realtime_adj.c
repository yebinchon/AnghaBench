
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kernel_timex {int dummy; } ;
typedef int clockid_t ;


 int do_adjtimex (struct __kernel_timex*) ;

__attribute__((used)) static int posix_clock_realtime_adj(const clockid_t which_clock,
        struct __kernel_timex *t)
{
 return do_adjtimex(t);
}
