
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {unsigned long timeout; } ;
struct posix_cputimers {int dummy; } ;
struct task_struct {TYPE_3__* signal; TYPE_1__ rt; struct posix_cputimers posix_cputimers; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {TYPE_2__* rlim; } ;
struct TYPE_5__ {unsigned long rlim_cur; } ;


 int CPUCLOCK_MAX ;
 unsigned long HZ ;
 size_t RLIMIT_RTTIME ;
 unsigned long RLIM_INFINITY ;
 int SIGKILL ;
 int SIGXCPU ;
 int TICK_DEP_BIT_POSIX_TIMER ;
 unsigned long USEC_PER_SEC ;
 int check_dl_overrun (struct task_struct*) ;
 scalar_t__ check_rlimit (unsigned long,unsigned long,int ,int,int) ;
 int collect_posix_cputimers (struct posix_cputimers*,int *,struct list_head*) ;
 scalar_t__ dl_task (struct task_struct*) ;
 scalar_t__ expiry_cache_is_inactive (struct posix_cputimers*) ;
 unsigned long task_rlimit (struct task_struct*,size_t) ;
 unsigned long task_rlimit_max (struct task_struct*,size_t) ;
 int task_sample_cputime (struct task_struct*,int *) ;
 int tick_dep_clear_task (struct task_struct*,int ) ;

__attribute__((used)) static void check_thread_timers(struct task_struct *tsk,
    struct list_head *firing)
{
 struct posix_cputimers *pct = &tsk->posix_cputimers;
 u64 samples[CPUCLOCK_MAX];
 unsigned long soft;

 if (dl_task(tsk))
  check_dl_overrun(tsk);

 if (expiry_cache_is_inactive(pct))
  return;

 task_sample_cputime(tsk, samples);
 collect_posix_cputimers(pct, samples, firing);




 soft = task_rlimit(tsk, RLIMIT_RTTIME);
 if (soft != RLIM_INFINITY) {

  unsigned long rttime = tsk->rt.timeout * (USEC_PER_SEC / HZ);
  unsigned long hard = task_rlimit_max(tsk, RLIMIT_RTTIME);


  if (hard != RLIM_INFINITY &&
      check_rlimit(rttime, hard, SIGKILL, 1, 1))
   return;


  if (check_rlimit(rttime, soft, SIGXCPU, 1, 0)) {
   soft += USEC_PER_SEC;
   tsk->signal->rlim[RLIMIT_RTTIME].rlim_cur = soft;
  }
 }

 if (expiry_cache_is_inactive(pct))
  tick_dep_clear_task(tsk, TICK_DEP_BIT_POSIX_TIMER);
}
