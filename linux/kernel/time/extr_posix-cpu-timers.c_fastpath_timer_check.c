
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {scalar_t__ dl_overrun; } ;
struct posix_cputimers {int expiry_active; int timers_active; } ;
struct task_struct {TYPE_2__ dl; struct signal_struct* signal; struct posix_cputimers posix_cputimers; } ;
struct TYPE_3__ {int cputime_atomic; } ;
struct signal_struct {TYPE_1__ cputimer; struct posix_cputimers posix_cputimers; } ;


 int CPUCLOCK_MAX ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ dl_task (struct task_struct*) ;
 int expiry_cache_is_inactive (struct posix_cputimers*) ;
 int proc_sample_cputime_atomic (int *,int *) ;
 scalar_t__ task_cputimers_expired (int *,struct posix_cputimers*) ;
 int task_sample_cputime (struct task_struct*,int *) ;

__attribute__((used)) static inline bool fastpath_timer_check(struct task_struct *tsk)
{
 struct posix_cputimers *pct = &tsk->posix_cputimers;
 struct signal_struct *sig;

 if (!expiry_cache_is_inactive(pct)) {
  u64 samples[CPUCLOCK_MAX];

  task_sample_cputime(tsk, samples);
  if (task_cputimers_expired(samples, pct))
   return 1;
 }

 sig = tsk->signal;
 pct = &sig->posix_cputimers;
 if (READ_ONCE(pct->timers_active) && !READ_ONCE(pct->expiry_active)) {
  u64 samples[CPUCLOCK_MAX];

  proc_sample_cputime_atomic(&sig->cputimer.cputime_atomic,
        samples);

  if (task_cputimers_expired(samples, pct))
   return 1;
 }

 if (dl_task(tsk) && tsk->dl.dl_overrun)
  return 1;

 return 0;
}
