
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_lock () ;
 int console_suspend_enabled ;
 int console_suspended ;
 int pr_info (char*) ;
 int up_console_sem () ;

void suspend_console(void)
{
 if (!console_suspend_enabled)
  return;
 pr_info("Suspending console(s) (use no_console_suspend to debug)\n");
 console_lock();
 console_suspended = 1;
 up_console_sem();
}
