
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock_killable (int *) ;
 int rtnl_mutex ;

int rtnl_lock_killable(void)
{
 return mutex_lock_killable(&rtnl_mutex);
}
