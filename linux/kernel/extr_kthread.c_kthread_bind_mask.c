
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cpumask {int dummy; } ;


 int TASK_UNINTERRUPTIBLE ;
 int __kthread_bind_mask (struct task_struct*,struct cpumask const*,int ) ;

void kthread_bind_mask(struct task_struct *p, const struct cpumask *mask)
{
 __kthread_bind_mask(p, mask, TASK_UNINTERRUPTIBLE);
}
