
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console_cmdline {scalar_t__ brl_options; int options; int index; } ;
struct console {int flags; } ;


 int CON_BRL ;
 int braille_register_console (struct console*,int ,int ,scalar_t__) ;

int
_braille_register_console(struct console *console, struct console_cmdline *c)
{
 int rtn = 0;

 if (c->brl_options) {
  console->flags |= CON_BRL;
  rtn = braille_register_console(console, c->index, c->options,
            c->brl_options);
 }

 return rtn;
}
