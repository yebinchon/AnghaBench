
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endwin () ;
 int move (int,int) ;
 int refresh () ;

void end_dialog(int x, int y)
{

 move(y, x);
 refresh();
 endwin();
}
