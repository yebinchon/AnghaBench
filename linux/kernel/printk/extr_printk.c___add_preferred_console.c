
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console_cmdline {int index; char* options; scalar_t__* name; } ;


 int E2BIG ;
 int MAX_CMDLINECONSOLES ;
 int braille_set_options (struct console_cmdline*,char*) ;
 struct console_cmdline* console_cmdline ;
 int preferred_console ;
 scalar_t__ strcmp (scalar_t__*,char*) ;
 int strlcpy (scalar_t__*,char*,int) ;

__attribute__((used)) static int __add_preferred_console(char *name, int idx, char *options,
       char *brl_options)
{
 struct console_cmdline *c;
 int i;





 for (i = 0, c = console_cmdline;
      i < MAX_CMDLINECONSOLES && c->name[0];
      i++, c++) {
  if (strcmp(c->name, name) == 0 && c->index == idx) {
   if (!brl_options)
    preferred_console = i;
   return 0;
  }
 }
 if (i == MAX_CMDLINECONSOLES)
  return -E2BIG;
 if (!brl_options)
  preferred_console = i;
 strlcpy(c->name, name, sizeof(c->name));
 c->options = options;
 braille_set_options(c, brl_options);

 c->index = idx;
 return 0;
}
