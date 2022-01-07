
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread {int parked; int flags; } ;


 int KTHREAD_SHOULD_PARK ;
 int TASK_PARKED ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int complete (int *) ;
 int schedule () ;
 int set_special_state (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void __kthread_parkme(struct kthread *self)
{
 for (;;) {
  set_special_state(TASK_PARKED);
  if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
   break;

  complete(&self->parked);
  schedule();
 }
 __set_current_state(TASK_RUNNING);
}
