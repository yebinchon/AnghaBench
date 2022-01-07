
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conf_write (int *) ;
 int dialog_clear () ;
 int * dialog_input_result ;
 int dialog_inputbox (int *,int ,int,int,int ) ;
 int filename ;
 int save_config_help ;
 int save_config_text ;
 int set_config_filename (int *) ;
 int show_helptext (char*,int ) ;
 int show_textbox (int *,char*,int,int) ;

__attribute__((used)) static void conf_save(void)
{
 while (1) {
  int res;
  dialog_clear();
  res = dialog_inputbox(((void*)0), save_config_text,
          11, 55, filename);
  switch(res) {
  case 0:
   if (!dialog_input_result[0])
    return;
   if (!conf_write(dialog_input_result)) {
    set_config_filename(dialog_input_result);
    return;
   }
   show_textbox(((void*)0), "Can't create file!", 5, 60);
   break;
  case 1:
   show_helptext("Save Alternate Configuration", save_config_help);
   break;
  case 128:
   return;
  }
 }
}
