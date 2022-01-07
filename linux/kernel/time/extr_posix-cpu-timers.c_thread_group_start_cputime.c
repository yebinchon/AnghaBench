
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct thread_group_cputimer {int cputime_atomic; } ;
struct task_struct {TYPE_1__* signal; } ;
struct task_cputime {int dummy; } ;
struct posix_cputimers {int timers_active; } ;
struct TYPE_2__ {struct posix_cputimers posix_cputimers; struct thread_group_cputimer cputimer; } ;


 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int) ;
 int proc_sample_cputime_atomic (int *,int *) ;
 int thread_group_cputime (struct task_struct*,struct task_cputime*) ;
 int update_gt_cputime (int *,struct task_cputime*) ;

__attribute__((used)) static void thread_group_start_cputime(struct task_struct *tsk, u64 *samples)
{
 struct thread_group_cputimer *cputimer = &tsk->signal->cputimer;
 struct posix_cputimers *pct = &tsk->signal->posix_cputimers;


 if (!READ_ONCE(pct->timers_active)) {
  struct task_cputime sum;






  thread_group_cputime(tsk, &sum);
  update_gt_cputime(&cputimer->cputime_atomic, &sum);
  WRITE_ONCE(pct->timers_active, 1);
 }
 proc_sample_cputime_atomic(&cputimer->cputime_atomic, samples);
}
