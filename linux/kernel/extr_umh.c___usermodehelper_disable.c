
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum umh_disable_depth { ____Placeholder_umh_disable_depth } umh_disable_depth ;


 int EAGAIN ;
 int EINVAL ;
 int RUNNING_HELPERS_TIMEOUT ;
 int UMH_ENABLED ;
 int __usermodehelper_set_disable_depth (int ) ;
 scalar_t__ atomic_read (int *) ;
 int down_write (int *) ;
 int running_helpers ;
 int running_helpers_waitq ;
 int umhelper_sem ;
 int up_write (int *) ;
 int usermodehelper_disabled ;
 long wait_event_timeout (int ,int,int ) ;

int __usermodehelper_disable(enum umh_disable_depth depth)
{
 long retval;

 if (!depth)
  return -EINVAL;

 down_write(&umhelper_sem);
 usermodehelper_disabled = depth;
 up_write(&umhelper_sem);







 retval = wait_event_timeout(running_helpers_waitq,
     atomic_read(&running_helpers) == 0,
     RUNNING_HELPERS_TIMEOUT);
 if (retval)
  return 0;

 __usermodehelper_set_disable_depth(UMH_ENABLED);
 return -EAGAIN;
}
