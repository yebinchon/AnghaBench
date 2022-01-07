
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int CAP_SYS_NICE ;
 int RLIMIT_NICE ;
 scalar_t__ capable (int ) ;
 int nice_to_rlimit (int const) ;
 int task_rlimit (struct task_struct const*,int ) ;

int can_nice(const struct task_struct *p, const int nice)
{

 int nice_rlim = nice_to_rlimit(nice);

 return (nice_rlim <= task_rlimit(p, RLIMIT_NICE) ||
  capable(CAP_SYS_NICE));
}
