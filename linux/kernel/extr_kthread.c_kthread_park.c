
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;
struct kthread {int parked; int flags; } ;


 int EBUSY ;
 int ENOSYS ;
 int KTHREAD_SHOULD_PARK ;
 int PF_EXITING ;
 int TASK_PARKED ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct task_struct* current ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 struct kthread* to_kthread (struct task_struct*) ;
 int wait_for_completion (int *) ;
 int wait_task_inactive (struct task_struct*,int ) ;
 int wake_up_process (struct task_struct*) ;

int kthread_park(struct task_struct *k)
{
 struct kthread *kthread = to_kthread(k);

 if (WARN_ON(k->flags & PF_EXITING))
  return -ENOSYS;

 if (WARN_ON_ONCE(test_bit(KTHREAD_SHOULD_PARK, &kthread->flags)))
  return -EBUSY;

 set_bit(KTHREAD_SHOULD_PARK, &kthread->flags);
 if (k != current) {
  wake_up_process(k);




  wait_for_completion(&kthread->parked);




  WARN_ON_ONCE(!wait_task_inactive(k, TASK_PARKED));
 }

 return 0;
}
