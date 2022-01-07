
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid_namespace {int hide_pid; int pid_gid; } ;


 int PTRACE_MODE_READ_FSCREDS ;
 scalar_t__ in_group_p (int ) ;
 int ptrace_may_access (struct task_struct*,int ) ;

__attribute__((used)) static bool has_pid_permissions(struct pid_namespace *pid,
     struct task_struct *task,
     int hide_pid_min)
{
 if (pid->hide_pid < hide_pid_min)
  return 1;
 if (in_group_p(pid->pid_gid))
  return 1;
 return ptrace_may_access(task, PTRACE_MODE_READ_FSCREDS);
}
