
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_ioctl {int list; } ;


 int ioctl_list ;
 int ioctl_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void register_atm_ioctl(struct atm_ioctl *ioctl)
{
 mutex_lock(&ioctl_mutex);
 list_add_tail(&ioctl->list, &ioctl_list);
 mutex_unlock(&ioctl_mutex);
}
