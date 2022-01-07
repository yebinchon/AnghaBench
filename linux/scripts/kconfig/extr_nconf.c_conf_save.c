
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btn_dialog (int ,char*,int,char*) ;
 int conf_write (int *) ;
 int * dialog_input_result ;
 int dialog_input_result_len ;
 int dialog_inputbox (int ,int *,int ,int ,int **,int *) ;
 int filename ;
 int main_window ;
 int save_config_help ;
 int save_config_text ;
 int set_config_filename (int *) ;
 int show_scroll_win (int ,char*,int ) ;

__attribute__((used)) static void conf_save(void)
{
 while (1) {
  int res;
  res = dialog_inputbox(main_window,
    ((void*)0), save_config_text,
    filename,
    &dialog_input_result,
    &dialog_input_result_len);
  switch (res) {
  case 0:
   if (!dialog_input_result[0])
    return;
   res = conf_write(dialog_input_result);
   if (!res) {
    set_config_filename(dialog_input_result);
    return;
   }
   btn_dialog(main_window, "Can't create file!",
    1, "<OK>");
   break;
  case 1:
   show_scroll_win(main_window,
    "Save Alternate Configuration",
    save_config_help);
   break;
  case 128:
   return;
  }
 }
}
