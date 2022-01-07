
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned int exit_code; scalar_t__ exit_state; int ptrace; } ;


 int EIO ;
 int PTRACE_DETACH ;
 int WARN_ON (int) ;
 int __ptrace_detach (int ,struct task_struct*) ;
 int current ;
 int proc_ptrace_connector (struct task_struct*,int ) ;
 int ptrace_disable (struct task_struct*) ;
 int tasklist_lock ;
 int valid_signal (unsigned int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int ptrace_detach(struct task_struct *child, unsigned int data)
{
 if (!valid_signal(data))
  return -EIO;


 ptrace_disable(child);

 write_lock_irq(&tasklist_lock);




 WARN_ON(!child->ptrace || child->exit_state);




 child->exit_code = data;
 __ptrace_detach(current, child);
 write_unlock_irq(&tasklist_lock);

 proc_ptrace_connector(child, PTRACE_DETACH);

 return 0;
}
