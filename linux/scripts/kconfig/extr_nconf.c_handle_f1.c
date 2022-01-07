
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;


 int main_window ;
 int nconf_global_help ;
 int show_scroll_win (int ,char*,int ) ;

__attribute__((used)) static void handle_f1(int *key, struct menu *current_item)
{
 show_scroll_win(main_window,
   "Global help", nconf_global_help);
 return;
}
