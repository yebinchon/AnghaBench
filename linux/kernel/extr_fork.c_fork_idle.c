
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kernel_clone_args {int flags; } ;


 int CLONE_VM ;
 int IS_ERR (struct task_struct*) ;
 struct task_struct* copy_process (int *,int ,int ,struct kernel_clone_args*) ;
 int cpu_to_node (int) ;
 int init_idle (struct task_struct*,int) ;
 int init_idle_pids (struct task_struct*) ;
 int init_struct_pid ;

struct task_struct *fork_idle(int cpu)
{
 struct task_struct *task;
 struct kernel_clone_args args = {
  .flags = CLONE_VM,
 };

 task = copy_process(&init_struct_pid, 0, cpu_to_node(cpu), &args);
 if (!IS_ERR(task)) {
  init_idle_pids(task);
  init_idle(task, cpu);
 }

 return task;
}
