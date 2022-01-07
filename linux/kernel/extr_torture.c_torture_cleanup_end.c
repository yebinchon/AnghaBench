
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fullstop_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * torture_type ;

void torture_cleanup_end(void)
{
 mutex_lock(&fullstop_mutex);
 torture_type = ((void*)0);
 mutex_unlock(&fullstop_mutex);
}
