
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {int wait; int retval; int * complete; int work; int path; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EBUSY ;
 int EINVAL ;
 int UMH_KILLABLE ;
 int UMH_NO_WAIT ;
 int call_usermodehelper_freeinfo (struct subprocess_info*) ;
 int done ;
 int helper_lock () ;
 int helper_unlock () ;
 int queue_work (int ,int *) ;
 scalar_t__ strlen (int ) ;
 int system_unbound_wq ;
 scalar_t__ usermodehelper_disabled ;
 int wait_for_completion (int *) ;
 int wait_for_completion_killable (int *) ;
 scalar_t__ xchg (int **,int *) ;

int call_usermodehelper_exec(struct subprocess_info *sub_info, int wait)
{
 DECLARE_COMPLETION_ONSTACK(done);
 int retval = 0;

 if (!sub_info->path) {
  call_usermodehelper_freeinfo(sub_info);
  return -EINVAL;
 }
 helper_lock();
 if (usermodehelper_disabled) {
  retval = -EBUSY;
  goto out;
 }






 if (strlen(sub_info->path) == 0)
  goto out;






 sub_info->complete = (wait == UMH_NO_WAIT) ? ((void*)0) : &done;
 sub_info->wait = wait;

 queue_work(system_unbound_wq, &sub_info->work);
 if (wait == UMH_NO_WAIT)
  goto unlock;

 if (wait & UMH_KILLABLE) {
  retval = wait_for_completion_killable(&done);
  if (!retval)
   goto wait_done;


  if (xchg(&sub_info->complete, ((void*)0)))
   goto unlock;

 }

 wait_for_completion(&done);
wait_done:
 retval = sub_info->retval;
out:
 call_usermodehelper_freeinfo(sub_info);
unlock:
 helper_unlock();
 return retval;
}
