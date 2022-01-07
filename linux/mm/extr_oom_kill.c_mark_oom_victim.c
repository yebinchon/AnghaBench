
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int pid; TYPE_1__* signal; struct mm_struct* mm; } ;
struct mm_struct {int flags; } ;
struct TYPE_2__ {int oom_mm; } ;


 int MMF_OOM_VICTIM ;
 int TIF_MEMDIE ;
 int WARN_ON (int ) ;
 int __thaw_task (struct task_struct*) ;
 int atomic_inc (int *) ;
 int cmpxchg (int *,int *,struct mm_struct*) ;
 int mmgrab (int ) ;
 int oom_killer_disabled ;
 int oom_victims ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_tsk_thread_flag (struct task_struct*,int ) ;
 int trace_mark_victim (int ) ;

__attribute__((used)) static void mark_oom_victim(struct task_struct *tsk)
{
 struct mm_struct *mm = tsk->mm;

 WARN_ON(oom_killer_disabled);

 if (test_and_set_tsk_thread_flag(tsk, TIF_MEMDIE))
  return;


 if (!cmpxchg(&tsk->signal->oom_mm, ((void*)0), mm)) {
  mmgrab(tsk->signal->oom_mm);
  set_bit(MMF_OOM_VICTIM, &mm->flags);
 }







 __thaw_task(tsk);
 atomic_inc(&oom_victims);
 trace_mark_victim(tsk->pid);
}
