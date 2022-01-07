
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autosleep_lock ;
 int mutex_unlock (int *) ;

void pm_autosleep_unlock(void)
{
 mutex_unlock(&autosleep_lock);
}
