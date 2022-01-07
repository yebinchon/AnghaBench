
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autosleep_lock ;
 int mutex_lock_interruptible (int *) ;

int pm_autosleep_lock(void)
{
 return mutex_lock_interruptible(&autosleep_lock);
}
