
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int PANEL ;


 size_t DIALOG_MENU_FORE ;
 int F_BACK ;
 int F_EXIT ;
 int F_HELP ;


 int KEY_F (int ) ;






 size_t SCROLLWIN_BOX ;
 size_t SCROLLWIN_HEADING ;
 size_t SCROLLWIN_TEXT ;
 int TRUE ;
 int * attributes ;
 int box (int *,int ,int ) ;
 int copywin (int *,int *,int,int,int,int,int,int,int ) ;
 int del_panel (int *) ;
 int delwin (int *) ;
 int fill_window (int *,char const*) ;
 char* get_line (char const*,int) ;
 int get_line_length (char const*) ;
 int get_line_no (char const*) ;
 int getmaxyx (int ,int,int) ;
 int keypad (int *,int ) ;
 int max (int,int) ;
 int min (int,int) ;
 int mvwprintw (int *,int ,int,char*,char const*) ;
 int * new_panel (int *) ;
 int * newpad (int,int) ;
 int * newwin (int,int,int,int) ;
 int print_in_middle (int *,int,int ,int,char*,int ) ;
 int refresh_all_windows (int *) ;
 int stdscr ;
 int wattrset (int *,int ) ;
 int wgetch (int *) ;
 int wrefresh (int *) ;

void show_scroll_win(WINDOW *main_window,
  const char *title,
  const char *text)
{
 int res;
 int total_lines = get_line_no(text);
 int x, y, lines, columns;
 int start_x = 0, start_y = 0;
 int text_lines = 0, text_cols = 0;
 int total_cols = 0;
 int win_cols = 0;
 int win_lines = 0;
 int i = 0;
 WINDOW *win;
 WINDOW *pad;
 PANEL *panel;

 getmaxyx(stdscr, lines, columns);


 total_lines = get_line_no(text);
 for (i = 0; i < total_lines; i++) {
  const char *line = get_line(text, i);
  int len = get_line_length(line);
  total_cols = max(total_cols, len+2);
 }


 pad = newpad(total_lines+10, total_cols+10);
 (void) wattrset(pad, attributes[SCROLLWIN_TEXT]);
 fill_window(pad, text);

 win_lines = min(total_lines+4, lines-2);
 win_cols = min(total_cols+2, columns-2);
 text_lines = max(win_lines-4, 0);
 text_cols = max(win_cols-2, 0);


 y = (lines-win_lines)/2;
 x = (columns-win_cols)/2;

 win = newwin(win_lines, win_cols, y, x);
 keypad(win, TRUE);

 (void) wattrset(win, attributes[SCROLLWIN_BOX]);
 box(win, 0, 0);
 (void) wattrset(win, attributes[SCROLLWIN_HEADING]);
 mvwprintw(win, 0, 3, " %s ", title);
 panel = new_panel(win);


 do {

  copywin(pad, win, start_y, start_x, 2, 2, text_lines,
    text_cols, 0);
  print_in_middle(win,
    text_lines+2,
    0,
    text_cols,
    "<OK>",
    attributes[DIALOG_MENU_FORE]);
  wrefresh(win);

  res = wgetch(win);
  switch (res) {
  case 131:
  case ' ':
  case 'd':
   start_y += text_lines-2;
   break;
  case 130:
  case 'u':
   start_y -= text_lines+2;
   break;
  case 133:
   start_y = 0;
   break;
  case 134:
   start_y = total_lines-text_lines;
   break;
  case 135:
  case 'j':
   start_y++;
   break;
  case 128:
  case 'k':
   start_y--;
   break;
  case 132:
  case 'h':
   start_x--;
   break;
  case 129:
  case 'l':
   start_x++;
   break;
  }
  if (res == 10 || res == 27 || res == 'q' ||
   res == KEY_F(F_HELP) || res == KEY_F(F_BACK) ||
   res == KEY_F(F_EXIT))
   break;
  if (start_y < 0)
   start_y = 0;
  if (start_y >= total_lines-text_lines)
   start_y = total_lines-text_lines;
  if (start_x < 0)
   start_x = 0;
  if (start_x >= total_cols-text_cols)
   start_x = total_cols-text_cols;
 } while (res);

 del_panel(panel);
 delwin(win);
 refresh_all_windows(main_window);
}
