
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_trylock (int *) ;
 int rtnl_mutex ;

int rtnl_trylock(void)
{
 return mutex_trylock(&rtnl_mutex);
}
