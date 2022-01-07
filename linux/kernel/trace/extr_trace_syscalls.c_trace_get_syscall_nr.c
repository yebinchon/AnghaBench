
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int syscall_get_nr (struct task_struct*,struct pt_regs*) ;

__attribute__((used)) static inline int
trace_get_syscall_nr(struct task_struct *task, struct pt_regs *regs)
{
 return syscall_get_nr(task, regs);
}
