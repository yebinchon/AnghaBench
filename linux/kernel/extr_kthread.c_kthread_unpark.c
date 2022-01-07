
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kthread {int flags; int cpu; } ;


 int KTHREAD_IS_PER_CPU ;
 int KTHREAD_SHOULD_PARK ;
 int TASK_PARKED ;
 int __kthread_bind (struct task_struct*,int ,int ) ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct kthread* to_kthread (struct task_struct*) ;
 int wake_up_state (struct task_struct*,int ) ;

void kthread_unpark(struct task_struct *k)
{
 struct kthread *kthread = to_kthread(k);





 if (test_bit(KTHREAD_IS_PER_CPU, &kthread->flags))
  __kthread_bind(k, kthread->cpu, TASK_PARKED);

 clear_bit(KTHREAD_SHOULD_PARK, &kthread->flags);



 wake_up_state(k, TASK_PARKED);
}
