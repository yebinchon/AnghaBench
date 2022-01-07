
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct signal_struct {int group_exit_code; int flags; } ;
struct sighand_struct {int siglock; } ;
struct TYPE_4__ {struct sighand_struct* sighand; struct signal_struct* signal; } ;


 int BUG_ON (int) ;
 int SIGNAL_GROUP_EXIT ;
 TYPE_1__* current ;
 int do_exit (int) ;
 scalar_t__ signal_group_exit (struct signal_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int thread_group_empty (TYPE_1__*) ;
 int zap_other_threads (TYPE_1__*) ;

void
do_group_exit(int exit_code)
{
 struct signal_struct *sig = current->signal;

 BUG_ON(exit_code & 0x80);

 if (signal_group_exit(sig))
  exit_code = sig->group_exit_code;
 else if (!thread_group_empty(current)) {
  struct sighand_struct *const sighand = current->sighand;

  spin_lock_irq(&sighand->siglock);
  if (signal_group_exit(sig))

   exit_code = sig->group_exit_code;
  else {
   sig->group_exit_code = exit_code;
   sig->flags = SIGNAL_GROUP_EXIT;
   zap_other_threads(current);
  }
  spin_unlock_irq(&sighand->siglock);
 }

 do_exit(exit_code);

}
