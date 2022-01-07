
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {struct completion* vfork_done; } ;
struct pid {int dummy; } ;
struct kernel_clone_args {int flags; scalar_t__ exit_signal; int parent_tid; } ;
struct completion {int dummy; } ;


 int CLONE_PARENT_SETTID ;
 int CLONE_UNTRACED ;
 int CLONE_VFORK ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int NUMA_NO_NODE ;
 int PIDTYPE_PID ;
 int PTRACE_EVENT_CLONE ;
 int PTRACE_EVENT_FORK ;
 int PTRACE_EVENT_VFORK ;
 int PTRACE_EVENT_VFORK_DONE ;
 long PTR_ERR (struct task_struct*) ;
 scalar_t__ SIGCHLD ;
 int add_latent_entropy () ;
 struct task_struct* copy_process (int *,int,int ,struct kernel_clone_args*) ;
 int current ;
 struct pid* get_task_pid (struct task_struct*,int ) ;
 int get_task_struct (struct task_struct*) ;
 int init_completion (struct completion*) ;
 scalar_t__ likely (int) ;
 long pid_vnr (struct pid*) ;
 int ptrace_event_enabled (int ,int) ;
 int ptrace_event_pid (int,struct pid*) ;
 int put_pid (struct pid*) ;
 int put_user (long,int ) ;
 int trace_sched_process_fork (int ,struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int wait_for_vfork_done (struct task_struct*,struct completion*) ;
 int wake_up_new_task (struct task_struct*) ;

long _do_fork(struct kernel_clone_args *args)
{
 u64 clone_flags = args->flags;
 struct completion vfork;
 struct pid *pid;
 struct task_struct *p;
 int trace = 0;
 long nr;







 if (!(clone_flags & CLONE_UNTRACED)) {
  if (clone_flags & CLONE_VFORK)
   trace = PTRACE_EVENT_VFORK;
  else if (args->exit_signal != SIGCHLD)
   trace = PTRACE_EVENT_CLONE;
  else
   trace = PTRACE_EVENT_FORK;

  if (likely(!ptrace_event_enabled(current, trace)))
   trace = 0;
 }

 p = copy_process(((void*)0), trace, NUMA_NO_NODE, args);
 add_latent_entropy();

 if (IS_ERR(p))
  return PTR_ERR(p);





 trace_sched_process_fork(current, p);

 pid = get_task_pid(p, PIDTYPE_PID);
 nr = pid_vnr(pid);

 if (clone_flags & CLONE_PARENT_SETTID)
  put_user(nr, args->parent_tid);

 if (clone_flags & CLONE_VFORK) {
  p->vfork_done = &vfork;
  init_completion(&vfork);
  get_task_struct(p);
 }

 wake_up_new_task(p);


 if (unlikely(trace))
  ptrace_event_pid(trace, pid);

 if (clone_flags & CLONE_VFORK) {
  if (!wait_for_vfork_done(p, &vfork))
   ptrace_event_pid(PTRACE_EVENT_VFORK_DONE, pid);
 }

 put_pid(pid);
 return nr;
}
