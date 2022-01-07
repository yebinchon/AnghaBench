
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {scalar_t__ name; } ;
struct menu {struct symbol* sym; } ;
struct gstr {int dummy; } ;


 int CONFIG_ ;
 int get_symbol_str (struct gstr*,struct symbol*,int *) ;
 char* menu_get_help (struct menu*) ;
 scalar_t__ menu_has_help (struct menu*) ;
 char* nohelp_text ;
 int str_printf (struct gstr*,char*,char const*,...) ;

void menu_get_ext_help(struct menu *menu, struct gstr *help)
{
 struct symbol *sym = menu->sym;
 const char *help_text = nohelp_text;

 if (menu_has_help(menu)) {
  if (sym->name)
   str_printf(help, "%s%s:\n\n", CONFIG_, sym->name);
  help_text = menu_get_help(menu);
 }
 str_printf(help, "%s\n", help_text);
 if (sym)
  get_symbol_str(help, sym, ((void*)0));
}
