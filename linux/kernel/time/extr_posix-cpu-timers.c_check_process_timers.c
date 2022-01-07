
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {struct signal_struct* signal; } ;
struct TYPE_4__ {int cputime_atomic; } ;
struct posix_cputimers {int expiry_active; TYPE_3__* bases; int timers_active; } ;
struct signal_struct {TYPE_2__* rlim; int * it; TYPE_1__ cputimer; struct posix_cputimers posix_cputimers; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {scalar_t__ nextevt; } ;
struct TYPE_5__ {unsigned long rlim_cur; } ;


 int CPUCLOCK_MAX ;
 size_t CPUCLOCK_PROF ;
 size_t CPUCLOCK_VIRT ;
 scalar_t__ NSEC_PER_SEC ;
 int READ_ONCE (int ) ;
 size_t RLIMIT_CPU ;
 unsigned long RLIM_INFINITY ;
 int SIGKILL ;
 int SIGPROF ;
 int SIGVTALRM ;
 int SIGXCPU ;
 int check_cpu_itimer (struct task_struct*,int *,scalar_t__*,scalar_t__,int ) ;
 scalar_t__ check_rlimit (scalar_t__,scalar_t__,int ,int,int) ;
 int collect_posix_cputimers (struct posix_cputimers*,scalar_t__*,struct list_head*) ;
 scalar_t__ expiry_cache_is_inactive (struct posix_cputimers*) ;
 int proc_sample_cputime_atomic (int *,scalar_t__*) ;
 int stop_process_timers (struct signal_struct* const) ;
 unsigned long task_rlimit (struct task_struct*,size_t) ;
 unsigned long task_rlimit_max (struct task_struct*,size_t) ;

__attribute__((used)) static void check_process_timers(struct task_struct *tsk,
     struct list_head *firing)
{
 struct signal_struct *const sig = tsk->signal;
 struct posix_cputimers *pct = &sig->posix_cputimers;
 u64 samples[CPUCLOCK_MAX];
 unsigned long soft;






 if (!READ_ONCE(pct->timers_active) || pct->expiry_active)
  return;





 pct->expiry_active = 1;





 proc_sample_cputime_atomic(&sig->cputimer.cputime_atomic, samples);
 collect_posix_cputimers(pct, samples, firing);




 check_cpu_itimer(tsk, &sig->it[CPUCLOCK_PROF],
    &pct->bases[CPUCLOCK_PROF].nextevt,
    samples[CPUCLOCK_PROF], SIGPROF);
 check_cpu_itimer(tsk, &sig->it[CPUCLOCK_VIRT],
    &pct->bases[CPUCLOCK_VIRT].nextevt,
    samples[CPUCLOCK_VIRT], SIGVTALRM);

 soft = task_rlimit(tsk, RLIMIT_CPU);
 if (soft != RLIM_INFINITY) {

  unsigned long hard = task_rlimit_max(tsk, RLIMIT_CPU);
  u64 ptime = samples[CPUCLOCK_PROF];
  u64 softns = (u64)soft * NSEC_PER_SEC;
  u64 hardns = (u64)hard * NSEC_PER_SEC;


  if (hard != RLIM_INFINITY &&
      check_rlimit(ptime, hardns, SIGKILL, 0, 1))
   return;


  if (check_rlimit(ptime, softns, SIGXCPU, 0, 0)) {
   sig->rlim[RLIMIT_CPU].rlim_cur = soft + 1;
   softns += NSEC_PER_SEC;
  }


  if (softns < pct->bases[CPUCLOCK_PROF].nextevt)
   pct->bases[CPUCLOCK_PROF].nextevt = softns;
 }

 if (expiry_cache_is_inactive(pct))
  stop_process_timers(sig);

 pct->expiry_active = 0;
}
