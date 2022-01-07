
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btn_dialog (int ,char*,int ) ;
 int conf_read (int *) ;
 int * dialog_input_result ;
 int dialog_input_result_len ;
 int dialog_inputbox (int ,int *,int ,int ,int **,int *) ;
 int filename ;
 int load_config_help ;
 int load_config_text ;
 int main_window ;
 int set_config_filename (int *) ;
 int show_scroll_win (int ,char*,int ) ;
 int sym_set_change_count (int) ;

__attribute__((used)) static void conf_load(void)
{
 while (1) {
  int res;
  res = dialog_inputbox(main_window,
    ((void*)0), load_config_text,
    filename,
    &dialog_input_result,
    &dialog_input_result_len);
  switch (res) {
  case 0:
   if (!dialog_input_result[0])
    return;
   if (!conf_read(dialog_input_result)) {
    set_config_filename(dialog_input_result);
    sym_set_change_count(1);
    return;
   }
   btn_dialog(main_window, "File does not exist!", 0);
   break;
  case 1:
   show_scroll_win(main_window,
     "Load Alternate Configuration",
     load_config_help);
   break;
  case 128:
   return;
  }
 }
}
