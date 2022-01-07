
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int user_ns; } ;


 int CAP_SYS_PTRACE ;
 int EPERM ;
 unsigned int PTRACE_MODE_ATTACH ;
 unsigned int PTRACE_MODE_NOAUDIT ;




 TYPE_1__* __task_cred (struct task_struct*) ;
 int current ;
 int ns_capable (int ,int ) ;
 int pid_alive (struct task_struct*) ;
 int ptrace_scope ;
 int ptracer_exception_found (int ,struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int report_access (char*,struct task_struct*,int ) ;
 int task_is_descendant (int ,struct task_struct*) ;

__attribute__((used)) static int yama_ptrace_access_check(struct task_struct *child,
        unsigned int mode)
{
 int rc = 0;


 if (mode & PTRACE_MODE_ATTACH) {
  switch (ptrace_scope) {
  case 130:

   break;
  case 128:
   rcu_read_lock();
   if (!pid_alive(child))
    rc = -EPERM;
   if (!rc && !task_is_descendant(current, child) &&
       !ptracer_exception_found(current, child) &&
       !ns_capable(__task_cred(child)->user_ns, CAP_SYS_PTRACE))
    rc = -EPERM;
   rcu_read_unlock();
   break;
  case 131:
   rcu_read_lock();
   if (!ns_capable(__task_cred(child)->user_ns, CAP_SYS_PTRACE))
    rc = -EPERM;
   rcu_read_unlock();
   break;
  case 129:
  default:
   rc = -EPERM;
   break;
  }
 }

 if (rc && (mode & PTRACE_MODE_NOAUDIT) == 0)
  report_access("attach", child, current);

 return rc;
}
