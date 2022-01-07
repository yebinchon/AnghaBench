
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reboot_work ;
 int schedule_work (int *) ;

void orderly_reboot(void)
{
 schedule_work(&reboot_work);
}
