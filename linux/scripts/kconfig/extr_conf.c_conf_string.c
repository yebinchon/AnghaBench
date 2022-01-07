
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {char const* name; } ;
struct menu {TYPE_1__* prompt; struct symbol* sym; } ;
struct TYPE_2__ {int text; } ;


 int conf_askvalue (struct symbol*,char const*) ;
 char* indent ;
 int* line ;
 int print_help (struct menu*) ;
 int printf (char*,char const*,...) ;
 int strlen (int*) ;
 char* sym_get_string_value (struct symbol*) ;
 scalar_t__ sym_set_string_value (struct symbol*,char const*) ;

__attribute__((used)) static int conf_string(struct menu *menu)
{
 struct symbol *sym = menu->sym;
 const char *def;

 while (1) {
  printf("%*s%s ", indent - 1, "", menu->prompt->text);
  printf("(%s) ", sym->name);
  def = sym_get_string_value(sym);
  if (sym_get_string_value(sym))
   printf("[%s] ", def);
  if (!conf_askvalue(sym, def))
   return 0;
  switch (line[0]) {
  case '\n':
   break;
  case '?':

   if (line[1] == '\n') {
    print_help(menu);
    def = ((void*)0);
    break;
   }

  default:
   line[strlen(line)-1] = 0;
   def = line;
  }
  if (def && sym_set_string_value(sym, def))
   return 0;
 }
}
