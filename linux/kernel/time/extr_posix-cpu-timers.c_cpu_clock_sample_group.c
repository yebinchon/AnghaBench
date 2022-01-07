
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct thread_group_cputimer {int cputime_atomic; } ;
struct task_struct {TYPE_1__* signal; } ;
struct posix_cputimers {int timers_active; } ;
typedef size_t clockid_t ;
struct TYPE_2__ {struct posix_cputimers posix_cputimers; struct thread_group_cputimer cputimer; } ;


 int CPUCLOCK_MAX ;
 int READ_ONCE (int ) ;
 int __thread_group_cputime (struct task_struct*,int *) ;
 int proc_sample_cputime_atomic (int *,int *) ;
 int thread_group_start_cputime (struct task_struct*,int *) ;

__attribute__((used)) static u64 cpu_clock_sample_group(const clockid_t clkid, struct task_struct *p,
      bool start)
{
 struct thread_group_cputimer *cputimer = &p->signal->cputimer;
 struct posix_cputimers *pct = &p->signal->posix_cputimers;
 u64 samples[CPUCLOCK_MAX];

 if (!READ_ONCE(pct->timers_active)) {
  if (start)
   thread_group_start_cputime(p, samples);
  else
   __thread_group_cputime(p, samples);
 } else {
  proc_sample_cputime_atomic(&cputimer->cputime_atomic, samples);
 }

 return samples[clkid];
}
