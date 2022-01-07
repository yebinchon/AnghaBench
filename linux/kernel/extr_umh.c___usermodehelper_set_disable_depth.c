
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum umh_disable_depth { ____Placeholder_umh_disable_depth } umh_disable_depth ;


 int down_write (int *) ;
 int umhelper_sem ;
 int up_write (int *) ;
 int usermodehelper_disabled ;
 int usermodehelper_disabled_waitq ;
 int wake_up (int *) ;

void __usermodehelper_set_disable_depth(enum umh_disable_depth depth)
{
 down_write(&umhelper_sem);
 usermodehelper_disabled = depth;
 wake_up(&usermodehelper_disabled_waitq);
 up_write(&umhelper_sem);
}
