
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __kthread_bind_mask (struct task_struct*,int ,long) ;
 int cpumask_of (unsigned int) ;

__attribute__((used)) static void __kthread_bind(struct task_struct *p, unsigned int cpu, long state)
{
 __kthread_bind_mask(p, cpumask_of(cpu), state);
}
