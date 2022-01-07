
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ parent; scalar_t__ state; scalar_t__ ptrace; } ;


 int ESRCH ;
 int WARN_ON (int) ;
 scalar_t__ __TASK_TRACED ;
 scalar_t__ current ;
 scalar_t__ ptrace_freeze_traced (struct task_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int tasklist_lock ;
 int wait_task_inactive (struct task_struct*,scalar_t__) ;

__attribute__((used)) static int ptrace_check_attach(struct task_struct *child, bool ignore_state)
{
 int ret = -ESRCH;
 read_lock(&tasklist_lock);
 if (child->ptrace && child->parent == current) {
  WARN_ON(child->state == __TASK_TRACED);




  if (ignore_state || ptrace_freeze_traced(child))
   ret = 0;
 }
 read_unlock(&tasklist_lock);

 if (!ret && !ignore_state) {
  if (!wait_task_inactive(child, __TASK_TRACED)) {





   WARN_ON(child->state == __TASK_TRACED);
   ret = -ESRCH;
  }
 }

 return ret;
}
