
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_locked ;
 int console_may_schedule ;
 scalar_t__ console_suspended ;
 int down_console_sem () ;
 int might_sleep () ;

void console_lock(void)
{
 might_sleep();

 down_console_sem();
 if (console_suspended)
  return;
 console_locked = 1;
 console_may_schedule = 1;
}
