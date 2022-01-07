
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int print_button (int *,char*,int,int,int) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;

__attribute__((used)) static void print_buttons(WINDOW * win, int height, int width, int selected)
{
 int x = width / 2 - 28;
 int y = height - 2;

 print_button(win, "Select", y, x, selected == 0);
 print_button(win, " Exit ", y, x + 12, selected == 1);
 print_button(win, " Help ", y, x + 24, selected == 2);
 print_button(win, " Save ", y, x + 36, selected == 3);
 print_button(win, " Load ", y, x + 48, selected == 4);

 wmove(win, y, x + 1 + 12 * selected);
 wrefresh(win);
}
