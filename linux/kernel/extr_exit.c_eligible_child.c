
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_opts {int wo_flags; } ;
struct task_struct {scalar_t__ exit_signal; } ;


 scalar_t__ SIGCHLD ;
 int __WALL ;
 int __WCLONE ;
 int eligible_pid (struct wait_opts*,struct task_struct*) ;

__attribute__((used)) static int
eligible_child(struct wait_opts *wo, bool ptrace, struct task_struct *p)
{
 if (!eligible_pid(wo, p))
  return 0;





 if (ptrace || (wo->wo_flags & __WALL))
  return 1;
 if ((p->exit_signal != SIGCHLD) ^ !!(wo->wo_flags & __WCLONE))
  return 0;

 return 1;
}
