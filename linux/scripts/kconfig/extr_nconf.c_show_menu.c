
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 size_t MAIN_HEADING ;
 size_t MAIN_MENU_BOX ;
 size_t MAIN_MENU_HEADING ;
 size_t NORMAL ;
 int TRUE ;
 int * attributes ;
 int box (int ,int ,int ) ;
 int center_item (int,int*) ;
 int clear () ;
 char const* current_instructions ;
 int curses_menu ;
 int curses_menu_items ;
 int * derwin (int ,int,int,int,int) ;
 int getmaxx (int ) ;
 int keypad (int *,int ) ;
 int main_window ;
 int menu_backtitle ;
 int min (int,int) ;
 int mvwprintw (int ,int ,int,char*,char const*) ;
 int mwin_max_cols ;
 int mwin_max_lines ;
 int post_menu (int ) ;
 int print_function_line () ;
 int print_in_middle (int ,int,int ,int ,int ,int ) ;
 int refresh_all_windows (int ) ;
 int scale_menu (int ,int*,int*) ;
 int set_menu_format (int ,int,int) ;
 int set_menu_items (int ,int ) ;
 int set_menu_sub (int ,int *) ;
 int set_menu_win (int ,int *) ;
 int stdscr ;
 int wattrset (int ,int ) ;

__attribute__((used)) static void show_menu(const char *prompt, const char *instructions,
  int selected_index, int *last_top_row)
{
 int maxx, maxy;
 WINDOW *menu_window;

 current_instructions = instructions;

 clear();
 (void) wattrset(main_window, attributes[NORMAL]);
 print_in_middle(stdscr, 1, 0, getmaxx(stdscr),
   menu_backtitle,
   attributes[MAIN_HEADING]);

 (void) wattrset(main_window, attributes[MAIN_MENU_BOX]);
 box(main_window, 0, 0);
 (void) wattrset(main_window, attributes[MAIN_MENU_HEADING]);
 mvwprintw(main_window, 0, 3, " %s ", prompt);
 (void) wattrset(main_window, attributes[NORMAL]);

 set_menu_items(curses_menu, curses_menu_items);


 scale_menu(curses_menu, &maxy, &maxx);
 maxx = min(maxx, mwin_max_cols-2);
 maxy = mwin_max_lines;
 menu_window = derwin(main_window,
   maxy,
   maxx,
   2,
   (mwin_max_cols-maxx)/2);
 keypad(menu_window, TRUE);
 set_menu_win(curses_menu, menu_window);
 set_menu_sub(curses_menu, menu_window);




 set_menu_format(curses_menu, maxy, 1);
 center_item(selected_index, last_top_row);
 set_menu_format(curses_menu, maxy, 1);

 print_function_line();


 post_menu(curses_menu);
 refresh_all_windows(main_window);
}
