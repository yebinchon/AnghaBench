
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct subtitle_part {int entries; int * text; } ;
struct menu {TYPE_1__* prompt; void* data; struct symbol* sym; } ;
struct TYPE_5__ {int prev; } ;
struct TYPE_4__ {int type; } ;


 int ERRDISPLAYTOOSMALL ;
 int KEY_ESC ;
 int P_MENU ;
 int build_conf (struct menu*) ;
 int child_count ;
 int conf_choice (struct menu*) ;
 int conf_load () ;
 int conf_save () ;
 int conf_string (struct menu*) ;
 struct menu* current_menu ;
 int dialog_clear () ;
 int dialog_menu (char const*,int ,struct menu*,int*) ;
 int item_activate_selected () ;
 scalar_t__ item_count () ;
 struct menu* item_data () ;
 int item_is_tag (char) ;
 int item_reset () ;
 scalar_t__ item_tag () ;
 int list_add_tail (int *,TYPE_2__*) ;
 int list_del (int ) ;
 int mconf_readme ;
 void* menu_get_prompt (struct menu*) ;
 int menu_instructions ;
 int mod ;
 int no ;
 int reset_subtitle () ;
 struct menu rootmenu ;
 int search_conf () ;
 int set_subtitle () ;
 int setmod_text ;
 int show_all_options ;
 int show_help (struct menu*) ;
 int show_helptext (char*,int ) ;
 int show_textbox (int *,int ,int,int) ;
 int single_menu_mode ;
 int sym_get_tristate_value (struct symbol*) ;
 int sym_is_choice (struct symbol*) ;
 int sym_set_tristate_value (struct symbol*,int ) ;
 int sym_toggle_tristate_value (struct symbol*) ;
 TYPE_2__ trail ;
 int yes ;

__attribute__((used)) static void conf(struct menu *menu, struct menu *active_menu)
{
 struct menu *submenu;
 const char *prompt = menu_get_prompt(menu);
 struct subtitle_part stpart;
 struct symbol *sym;
 int res;
 int s_scroll = 0;

 if (menu != &rootmenu)
  stpart.text = menu_get_prompt(menu);
 else
  stpart.text = ((void*)0);
 list_add_tail(&stpart.entries, &trail);

 while (1) {
  item_reset();
  current_menu = menu;
  build_conf(menu);
  if (!child_count)
   break;
  set_subtitle();
  dialog_clear();
  res = dialog_menu(prompt ? prompt : "Main Menu",
      menu_instructions,
      active_menu, &s_scroll);
  if (res == 1 || res == KEY_ESC || res == -ERRDISPLAYTOOSMALL)
   break;
  if (item_count() != 0) {
   if (!item_activate_selected())
    continue;
   if (!item_tag())
    continue;
  }
  submenu = item_data();
  active_menu = item_data();
  if (submenu)
   sym = submenu->sym;
  else
   sym = ((void*)0);

  switch (res) {
  case 0:
   switch (item_tag()) {
   case 'm':
    if (single_menu_mode)
     submenu->data = (void *) (long) !submenu->data;
    else
     conf(submenu, ((void*)0));
    break;
   case 't':
    if (sym_is_choice(sym) && sym_get_tristate_value(sym) == yes)
     conf_choice(submenu);
    else if (submenu->prompt->type == P_MENU)
     conf(submenu, ((void*)0));
    break;
   case 's':
    conf_string(submenu);
    break;
   }
   break;
  case 2:
   if (sym)
    show_help(submenu);
   else {
    reset_subtitle();
    show_helptext("README", mconf_readme);
   }
   break;
  case 3:
   reset_subtitle();
   conf_save();
   break;
  case 4:
   reset_subtitle();
   conf_load();
   break;
  case 5:
   if (item_is_tag('t')) {
    if (sym_set_tristate_value(sym, yes))
     break;
    if (sym_set_tristate_value(sym, mod))
     show_textbox(((void*)0), setmod_text, 6, 74);
   }
   break;
  case 6:
   if (item_is_tag('t'))
    sym_set_tristate_value(sym, no);
   break;
  case 7:
   if (item_is_tag('t'))
    sym_set_tristate_value(sym, mod);
   break;
  case 8:
   if (item_is_tag('t'))
    sym_toggle_tristate_value(sym);
   else if (item_is_tag('m'))
    conf(submenu, ((void*)0));
   break;
  case 9:
   search_conf();
   break;
  case 10:
   show_all_options = !show_all_options;
   break;
  }
 }

 list_del(trail.prev);
}
