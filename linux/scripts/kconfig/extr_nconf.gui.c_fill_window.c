
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 char* get_line (char const*,int) ;
 int get_line_length (char const*) ;
 int get_line_no (char const*) ;
 int getmaxyx (int *,int,int) ;
 int min (int,int) ;
 int mvwprintw (int *,int,int ,char*,char*) ;
 int strncpy (char*,char const*,int) ;

void fill_window(WINDOW *win, const char *text)
{
 int x, y;
 int total_lines = get_line_no(text);
 int i;

 getmaxyx(win, y, x);

 total_lines = min(total_lines, y);
 for (i = 0; i < total_lines; i++) {
  char tmp[x+10];
  const char *line = get_line(text, i);
  int len = get_line_length(line);
  strncpy(tmp, line, min(len, x));
  tmp[len] = '\0';
  mvwprintw(win, i, 0, "%s", tmp);
 }
}
