
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct linux_binprm {int dummy; } ;
typedef int pid_t ;
struct TYPE_5__ {int parent; int pid; } ;


 int PTRACE_EVENT_EXEC ;
 int audit_bprm (struct linux_binprm*) ;
 TYPE_1__* current ;
 int proc_exec_connector (TYPE_1__*) ;
 int ptrace_event (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int search_binary_handler (struct linux_binprm*) ;
 int task_active_pid_ns (int ) ;
 int task_pid_nr_ns (TYPE_1__*,int ) ;
 int trace_sched_process_exec (TYPE_1__*,int ,struct linux_binprm*) ;

__attribute__((used)) static int exec_binprm(struct linux_binprm *bprm)
{
 pid_t old_pid, old_vpid;
 int ret;


 old_pid = current->pid;
 rcu_read_lock();
 old_vpid = task_pid_nr_ns(current, task_active_pid_ns(current->parent));
 rcu_read_unlock();

 ret = search_binary_handler(bprm);
 if (ret >= 0) {
  audit_bprm(bprm);
  trace_sched_process_exec(current, old_pid, bprm);
  ptrace_event(PTRACE_EVENT_EXEC, old_vpid);
  proc_exec_connector(current);
 }

 return ret;
}
