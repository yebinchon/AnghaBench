
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PM_SUSPEND_TO_IDLE ;
 scalar_t__ mem_sleep_current ;

bool pm_suspend_default_s2idle(void)
{
 return mem_sleep_current == PM_SUSPEND_TO_IDLE;
}
