
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_flags; int l_blocking; int l_ex_holders; int l_ro_holders; } ;


 int BUG () ;


 int USER_LOCK_BLOCKED ;
 int __user_dlm_queue_lockres (struct user_lock_res*) ;

__attribute__((used)) static void __user_dlm_cond_queue_lockres(struct user_lock_res *lockres)
{
 int queue = 0;

 if (!(lockres->l_flags & USER_LOCK_BLOCKED))
  return;

 switch (lockres->l_blocking) {
 case 129:
  if (!lockres->l_ex_holders && !lockres->l_ro_holders)
   queue = 1;
  break;
 case 128:
  if (!lockres->l_ex_holders)
   queue = 1;
  break;
 default:
  BUG();
 }

 if (queue)
  __user_dlm_queue_lockres(lockres);
}
