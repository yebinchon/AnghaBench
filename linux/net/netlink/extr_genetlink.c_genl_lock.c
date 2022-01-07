
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genl_mutex ;
 int mutex_lock (int *) ;

void genl_lock(void)
{
 mutex_lock(&genl_mutex);
}
