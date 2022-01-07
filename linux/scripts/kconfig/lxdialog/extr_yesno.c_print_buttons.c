
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int print_button (int *,char*,int,int,int) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;

__attribute__((used)) static void print_buttons(WINDOW * dialog, int height, int width, int selected)
{
 int x = width / 2 - 10;
 int y = height - 2;

 print_button(dialog, " Yes ", y, x, selected == 0);
 print_button(dialog, "  No  ", y, x + 13, selected == 1);

 wmove(dialog, y, x + 1 + 13 * selected);
 wrefresh(dialog);
}
