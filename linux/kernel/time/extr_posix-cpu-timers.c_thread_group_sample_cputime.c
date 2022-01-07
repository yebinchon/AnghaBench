
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct thread_group_cputimer {int cputime_atomic; } ;
struct task_struct {TYPE_1__* signal; } ;
struct posix_cputimers {int timers_active; } ;
struct TYPE_2__ {struct posix_cputimers posix_cputimers; struct thread_group_cputimer cputimer; } ;


 int WARN_ON_ONCE (int) ;
 int proc_sample_cputime_atomic (int *,int *) ;

void thread_group_sample_cputime(struct task_struct *tsk, u64 *samples)
{
 struct thread_group_cputimer *cputimer = &tsk->signal->cputimer;
 struct posix_cputimers *pct = &tsk->signal->posix_cputimers;

 WARN_ON_ONCE(!pct->timers_active);

 proc_sample_cputime_atomic(&cputimer->cputime_atomic, samples);
}
