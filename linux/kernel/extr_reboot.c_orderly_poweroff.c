
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int poweroff_force ;
 int poweroff_work ;
 int schedule_work (int *) ;

void orderly_poweroff(bool force)
{
 if (force)
  poweroff_force = 1;
 schedule_work(&poweroff_work);
}
