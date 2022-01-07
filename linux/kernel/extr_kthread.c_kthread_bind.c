
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TASK_UNINTERRUPTIBLE ;
 int __kthread_bind (struct task_struct*,unsigned int,int ) ;

void kthread_bind(struct task_struct *p, unsigned int cpu)
{
 __kthread_bind(p, cpu, TASK_UNINTERRUPTIBLE);
}
