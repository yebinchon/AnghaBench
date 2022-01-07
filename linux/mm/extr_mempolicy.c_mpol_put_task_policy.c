
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mempolicy* mempolicy; } ;
struct mempolicy {int dummy; } ;


 int mpol_put (struct mempolicy*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

void mpol_put_task_policy(struct task_struct *task)
{
 struct mempolicy *pol;

 task_lock(task);
 pol = task->mempolicy;
 task->mempolicy = ((void*)0);
 task_unlock(task);
 mpol_put(pol);
}
