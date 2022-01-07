
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int flags; } ;


 int CON_ENABLED ;
 int console_lock () ;
 int console_unlock () ;

void console_start(struct console *console)
{
 console_lock();
 console->flags |= CON_ENABLED;
 console_unlock();
}
