
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_locked ;
 scalar_t__ console_may_schedule ;
 scalar_t__ console_suspended ;
 scalar_t__ down_trylock_console_sem () ;
 int up_console_sem () ;

int console_trylock(void)
{
 if (down_trylock_console_sem())
  return 0;
 if (console_suspended) {
  up_console_sem();
  return 0;
 }
 console_locked = 1;
 console_may_schedule = 0;
 return 1;
}
