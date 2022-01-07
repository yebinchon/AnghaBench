
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int rtnl_mutex ;

void rtnl_lock(void)
{
 mutex_lock(&rtnl_mutex);
}
