
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tick_suspend_broadcast () ;
 int tick_suspend_local () ;

void tick_suspend(void)
{
 tick_suspend_local();
 tick_suspend_broadcast();
}
