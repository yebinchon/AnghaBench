
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int call_int_hook (int ,int ,struct task_struct*,unsigned long) ;
 int lsm_task_alloc (struct task_struct*) ;
 int security_task_free (struct task_struct*) ;
 int task_alloc ;
 scalar_t__ unlikely (int) ;

int security_task_alloc(struct task_struct *task, unsigned long clone_flags)
{
 int rc = lsm_task_alloc(task);

 if (rc)
  return rc;
 rc = call_int_hook(task_alloc, 0, task, clone_flags);
 if (unlikely(rc))
  security_task_free(task);
 return rc;
}
