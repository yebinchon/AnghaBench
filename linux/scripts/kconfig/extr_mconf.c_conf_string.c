
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int sym; } ;






 int dialog_clear () ;
 int dialog_input_result ;
 int dialog_inputbox (char const*,char const*,int,int,int ) ;
 char* inputbox_instructions_hex ;
 char* inputbox_instructions_int ;
 char* inputbox_instructions_string ;
 char* menu_get_prompt (struct menu*) ;
 int show_help (struct menu*) ;
 int show_textbox (int *,char*,int,int) ;
 int sym_get_string_value (int ) ;
 int sym_get_type (int ) ;
 int sym_set_string_value (int ,int ) ;

__attribute__((used)) static void conf_string(struct menu *menu)
{
 const char *prompt = menu_get_prompt(menu);

 while (1) {
  int res;
  const char *heading;

  switch (sym_get_type(menu->sym)) {
  case 129:
   heading = inputbox_instructions_int;
   break;
  case 130:
   heading = inputbox_instructions_hex;
   break;
  case 128:
   heading = inputbox_instructions_string;
   break;
  default:
   heading = "Internal mconf error!";
  }
  dialog_clear();
  res = dialog_inputbox(prompt ? prompt : "Main Menu",
          heading, 10, 75,
          sym_get_string_value(menu->sym));
  switch (res) {
  case 0:
   if (sym_set_string_value(menu->sym, dialog_input_result))
    return;
   show_textbox(((void*)0), "You have made an invalid entry.", 5, 43);
   break;
  case 1:
   show_help(menu);
   break;
  case 131:
   return;
  }
 }
}
