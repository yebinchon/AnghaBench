
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;


 int current_instructions ;
 int main_window ;
 int show_scroll_win (int ,char*,int ) ;

__attribute__((used)) static void handle_f3(int *key, struct menu *current_item)
{
 show_scroll_win(main_window,
   "Short help",
   current_instructions);
 return;
}
