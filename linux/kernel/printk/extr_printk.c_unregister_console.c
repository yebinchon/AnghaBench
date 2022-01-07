
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int flags; struct console* next; int index; int name; } ;


 int CON_BOOT ;
 int CON_CONSDEV ;
 int CON_ENABLED ;
 int CON_EXTENDED ;
 int _braille_unregister_console (struct console*) ;
 struct console* console_drivers ;
 int console_lock () ;
 int console_sysfs_notify () ;
 int console_unlock () ;
 int nr_ext_console_drivers ;
 int pr_info (char*,char*,int ,int ) ;

int unregister_console(struct console *console)
{
        struct console *a, *b;
 int res;

 pr_info("%sconsole [%s%d] disabled\n",
  (console->flags & CON_BOOT) ? "boot" : "" ,
  console->name, console->index);

 res = _braille_unregister_console(console);
 if (res)
  return res;

 res = 1;
 console_lock();
 if (console_drivers == console) {
  console_drivers=console->next;
  res = 0;
 } else if (console_drivers) {
  for (a=console_drivers->next, b=console_drivers ;
       a; b=a, a=b->next) {
   if (a == console) {
    b->next = a->next;
    res = 0;
    break;
   }
  }
 }

 if (!res && (console->flags & CON_EXTENDED))
  nr_ext_console_drivers--;





 if (console_drivers != ((void*)0) && console->flags & CON_CONSDEV)
  console_drivers->flags |= CON_CONSDEV;

 console->flags &= ~CON_ENABLED;
 console_unlock();
 console_sysfs_notify();
 return res;
}
