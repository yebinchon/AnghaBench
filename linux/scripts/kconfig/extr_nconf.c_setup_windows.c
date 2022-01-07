
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int delwin (int *) ;
 int getmaxyx (int ,int,int) ;
 int keypad (int *,int ) ;
 int * main_window ;
 int mwin_max_cols ;
 int mwin_max_lines ;
 int new_panel (int *) ;
 int * newwin (int,int,int,int) ;
 int stdscr ;

__attribute__((used)) static void setup_windows(void)
{
 int lines, columns;

 getmaxyx(stdscr, lines, columns);

 if (main_window != ((void*)0))
  delwin(main_window);


 main_window = newwin(lines-2, columns-2, 2, 1);
 keypad(main_window, TRUE);
 mwin_max_lines = lines-7;
 mwin_max_cols = columns-6;


 new_panel(main_window);
}
