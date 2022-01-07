
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long state; int flags; int comm; } ;


 int PF_FROZEN ;
 long TASK_UNINTERRUPTIBLE ;
 TYPE_1__* current ;
 int freezer_lock ;
 int freezing (TYPE_1__*) ;
 scalar_t__ kthread_should_stop () ;
 int pr_debug (char*,int ) ;
 int schedule () ;
 int set_current_state (long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

bool __refrigerator(bool check_kthr_stop)
{


 bool was_frozen = 0;
 long save = current->state;

 pr_debug("%s entered refrigerator\n", current->comm);

 for (;;) {
  set_current_state(TASK_UNINTERRUPTIBLE);

  spin_lock_irq(&freezer_lock);
  current->flags |= PF_FROZEN;
  if (!freezing(current) ||
      (check_kthr_stop && kthread_should_stop()))
   current->flags &= ~PF_FROZEN;
  spin_unlock_irq(&freezer_lock);

  if (!(current->flags & PF_FROZEN))
   break;
  was_frozen = 1;
  schedule();
 }

 pr_debug("%s left refrigerator\n", current->comm);






 set_current_state(save);

 return was_frozen;
}
