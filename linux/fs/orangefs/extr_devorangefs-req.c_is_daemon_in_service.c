
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int devreq_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_access_count ;

int is_daemon_in_service(void)
{
 int in_service;





 mutex_lock(&devreq_mutex);
 in_service = open_access_count == 1 ? 0 : -EIO;
 mutex_unlock(&devreq_mutex);
 return in_service;
}
