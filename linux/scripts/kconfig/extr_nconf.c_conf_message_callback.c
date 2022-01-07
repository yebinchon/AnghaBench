
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btn_dialog (int ,char const*,int,char*) ;
 int main_window ;

__attribute__((used)) static void conf_message_callback(const char *s)
{
 btn_dialog(main_window, s, 1, "<OK>");
}
