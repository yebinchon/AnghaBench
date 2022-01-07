
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec64 {int dummy; } ;
struct task_struct {int dummy; } ;
typedef int clockid_t ;


 scalar_t__ CPUCLOCK_PERTHREAD (int const) ;
 int CPUCLOCK_WHICH (int const) ;
 int EINVAL ;
 int cpu_clock_sample (int const,struct task_struct*) ;
 int cpu_clock_sample_group (int const,struct task_struct*,int) ;
 struct task_struct* get_task_for_clock_get (int const) ;
 struct timespec64 ns_to_timespec64 (int ) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static int posix_cpu_clock_get(const clockid_t clock, struct timespec64 *tp)
{
 const clockid_t clkid = CPUCLOCK_WHICH(clock);
 struct task_struct *tsk;
 u64 t;

 tsk = get_task_for_clock_get(clock);
 if (!tsk)
  return -EINVAL;

 if (CPUCLOCK_PERTHREAD(clock))
  t = cpu_clock_sample(clkid, tsk);
 else
  t = cpu_clock_sample_group(clkid, tsk, 0);
 put_task_struct(tsk);

 *tp = ns_to_timespec64(t);
 return 0;
}
