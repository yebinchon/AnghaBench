
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int CAP_SYS_PTRACE ;
 int EPERM ;


 int current ;
 int current_user_ns () ;
 int has_ns_capability (struct task_struct*,int ,int ) ;
 int ptrace_scope ;
 int report_access (char*,int ,struct task_struct*) ;
 int task_lock (int ) ;
 int task_unlock (int ) ;

__attribute__((used)) static int yama_ptrace_traceme(struct task_struct *parent)
{
 int rc = 0;


 switch (ptrace_scope) {
 case 129:
  if (!has_ns_capability(parent, current_user_ns(), CAP_SYS_PTRACE))
   rc = -EPERM;
  break;
 case 128:
  rc = -EPERM;
  break;
 }

 if (rc) {
  task_lock(current);
  report_access("traceme", current, parent);
  task_unlock(current);
 }

 return rc;
}
