
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;
struct gstr {scalar_t__ max_width; } ;


 scalar_t__ getmaxx (int ) ;
 int menu_get_ext_help (struct menu*,struct gstr*) ;
 int menu_get_prompt (struct menu*) ;
 int show_helptext (int ,int ) ;
 int stdscr ;
 int str_free (struct gstr*) ;
 int str_get (struct gstr*) ;
 struct gstr str_new () ;

__attribute__((used)) static void show_help(struct menu *menu)
{
 struct gstr help = str_new();

 help.max_width = getmaxx(stdscr) - 10;
 menu_get_ext_help(menu, &help);

 show_helptext(menu_get_prompt(menu), str_get(&help));
 str_free(&help);
}
