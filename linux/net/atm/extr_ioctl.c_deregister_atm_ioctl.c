
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_ioctl {int list; } ;


 int ioctl_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void deregister_atm_ioctl(struct atm_ioctl *ioctl)
{
 mutex_lock(&ioctl_mutex);
 list_del(&ioctl->list);
 mutex_unlock(&ioctl_mutex);
}
