
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __ptrace_link (struct task_struct*,struct task_struct*,int ) ;
 int current_cred () ;

__attribute__((used)) static void ptrace_link(struct task_struct *child, struct task_struct *new_parent)
{
 __ptrace_link(child, new_parent, current_cred());
}
