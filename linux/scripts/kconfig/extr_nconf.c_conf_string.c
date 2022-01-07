
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int sym; } ;






 int btn_dialog (int ,char*,int ) ;
 int dialog_input_result ;
 int dialog_input_result_len ;
 int dialog_inputbox (int ,char const*,char const*,int ,int *,int *) ;
 char* inputbox_instructions_hex ;
 char* inputbox_instructions_int ;
 char* inputbox_instructions_string ;
 int main_window ;
 char* menu_get_prompt (struct menu*) ;
 int show_help (struct menu*) ;
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
   heading = "Internal nconf error!";
  }
  res = dialog_inputbox(main_window,
    prompt ? prompt : "Main Menu",
    heading,
    sym_get_string_value(menu->sym),
    &dialog_input_result,
    &dialog_input_result_len);
  switch (res) {
  case 0:
   if (sym_set_string_value(menu->sym,
      dialog_input_result))
    return;
   btn_dialog(main_window,
    "You have made an invalid entry.", 0);
   break;
  case 1:
   show_help(menu);
   break;
  case 131:
   return;
  }
 }
}
