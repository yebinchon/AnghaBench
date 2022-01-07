
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_WAIT (int ) ;
 long EINVAL ;
 int TASK_UNINTERRUPTIBLE ;
 int down_read (int *) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 long schedule_timeout (long) ;
 int umhelper_sem ;
 int up_read (int *) ;
 int usermodehelper_disabled ;
 int usermodehelper_disabled_waitq ;
 int wait ;

long usermodehelper_read_lock_wait(long timeout)
{
 DEFINE_WAIT(wait);

 if (timeout < 0)
  return -EINVAL;

 down_read(&umhelper_sem);
 for (;;) {
  prepare_to_wait(&usermodehelper_disabled_waitq, &wait,
    TASK_UNINTERRUPTIBLE);
  if (!usermodehelper_disabled)
   break;

  up_read(&umhelper_sem);

  timeout = schedule_timeout(timeout);
  if (!timeout)
   break;

  down_read(&umhelper_sem);
 }
 finish_wait(&usermodehelper_disabled_waitq, &wait);
 return timeout;
}
