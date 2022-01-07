
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct task_struct {int dummy; } ;
typedef int clockid_t ;



 int const CPUCLOCK_SCHED ;

 int WARN_ON_ONCE (int) ;
 int task_cputime (struct task_struct*,scalar_t__*,scalar_t__*) ;
 scalar_t__ task_sched_runtime (struct task_struct*) ;

__attribute__((used)) static u64 cpu_clock_sample(const clockid_t clkid, struct task_struct *p)
{
 u64 utime, stime;

 if (clkid == CPUCLOCK_SCHED)
  return task_sched_runtime(p);

 task_cputime(p, &utime, &stime);

 switch (clkid) {
 case 129:
  return utime + stime;
 case 128:
  return utime;
 default:
  WARN_ON_ONCE(1);
 }
 return 0;
}
