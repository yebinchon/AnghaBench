
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_clock {int (* clock_adj ) (int const,struct __kernel_timex*) ;} ;
struct __kernel_timex {int dummy; } ;
typedef int clockid_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct k_clock* clockid_to_kclock (int const) ;
 int stub1 (int const,struct __kernel_timex*) ;

int do_clock_adjtime(const clockid_t which_clock, struct __kernel_timex * ktx)
{
 const struct k_clock *kc = clockid_to_kclock(which_clock);

 if (!kc)
  return -EINVAL;
 if (!kc->clock_adj)
  return -EOPNOTSUPP;

 return kc->clock_adj(which_clock, ktx);
}
