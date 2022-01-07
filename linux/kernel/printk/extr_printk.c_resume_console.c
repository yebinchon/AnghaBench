
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_suspend_enabled ;
 scalar_t__ console_suspended ;
 int console_unlock () ;
 int down_console_sem () ;

void resume_console(void)
{
 if (!console_suspend_enabled)
  return;
 down_console_sem();
 console_suspended = 0;
 console_unlock();
}
