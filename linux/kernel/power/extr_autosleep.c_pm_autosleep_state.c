
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int autosleep_state ;

suspend_state_t pm_autosleep_state(void)
{
 return autosleep_state;
}
