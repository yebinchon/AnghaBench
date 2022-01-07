
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ UMH_DISABLED ;
 int down_read (int *) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int try_to_freeze () ;
 int umhelper_sem ;
 int up_read (int *) ;
 scalar_t__ usermodehelper_disabled ;
 int usermodehelper_disabled_waitq ;
 int wait ;

int usermodehelper_read_trylock(void)
{
 DEFINE_WAIT(wait);
 int ret = 0;

 down_read(&umhelper_sem);
 for (;;) {
  prepare_to_wait(&usermodehelper_disabled_waitq, &wait,
    TASK_INTERRUPTIBLE);
  if (!usermodehelper_disabled)
   break;

  if (usermodehelper_disabled == UMH_DISABLED)
   ret = -EAGAIN;

  up_read(&umhelper_sem);

  if (ret)
   break;

  schedule();
  try_to_freeze();

  down_read(&umhelper_sem);
 }
 finish_wait(&usermodehelper_disabled_waitq, &wait);
 return ret;
}
