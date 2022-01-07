
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int rcu; int rcu_users; } ;


 int call_rcu (int *,int ) ;
 int delayed_put_task_struct ;
 scalar_t__ refcount_dec_and_test (int *) ;

void put_task_struct_rcu_user(struct task_struct *task)
{
 if (refcount_dec_and_test(&task->rcu_users))
  call_rcu(&task->rcu, delayed_put_task_struct);
}
