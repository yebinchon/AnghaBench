
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int flags; } ;


 int CON_BRL ;
 int braille_unregister_console (struct console*) ;

int
_braille_unregister_console(struct console *console)
{
 if (console->flags & CON_BRL)
  return braille_unregister_console(console);

 return 0;
}
