
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_is_locked (int *) ;
 int rtnl_mutex ;

int rtnl_is_locked(void)
{
 return mutex_is_locked(&rtnl_mutex);
}
