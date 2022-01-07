
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_EXIT ;
 int btn_dialog (int ,char*,int,char*,...) ;
 int conf_get_changed () ;
 int conf_write (int ) ;
 int conf_write_autoconf (int ) ;
 int filename ;
 int global_exit ;
 int main_window ;

__attribute__((used)) static int do_exit(void)
{
 int res;
 if (!conf_get_changed()) {
  global_exit = 1;
  return 0;
 }
 res = btn_dialog(main_window,
   "Do you wish to save your new configuration?\n"
    "<ESC> to cancel and resume nconfig.",
   2,
   "   <save>   ",
   "<don't save>");
 if (res == KEY_EXIT) {
  global_exit = 0;
  return -1;
 }


 switch (res) {
 case 0:
  res = conf_write(filename);
  if (res)
   btn_dialog(
    main_window,
    "Error during writing of configuration.\n"
      "Your configuration changes were NOT saved.",
      1,
      "<OK>");
  conf_write_autoconf(0);
  break;
 default:
  btn_dialog(
   main_window,
   "Your configuration changes were NOT saved.",
   1,
   "<OK>");
  break;
 }
 global_exit = 1;
 return 0;
}
