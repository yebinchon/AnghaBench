
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mems_allowed_seq; int mems_allowed; } ;
typedef int nodemask_t ;


 int local_irq_disable () ;
 int local_irq_enable () ;
 int mpol_rebind_task (struct task_struct*,int *) ;
 int nodes_or (int ,int ,int ) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

__attribute__((used)) static void cpuset_change_task_nodemask(struct task_struct *tsk,
     nodemask_t *newmems)
{
 task_lock(tsk);

 local_irq_disable();
 write_seqcount_begin(&tsk->mems_allowed_seq);

 nodes_or(tsk->mems_allowed, tsk->mems_allowed, *newmems);
 mpol_rebind_task(tsk, newmems);
 tsk->mems_allowed = *newmems;

 write_seqcount_end(&tsk->mems_allowed_seq);
 local_irq_enable();

 task_unlock(tsk);
}
