
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_row; int ws_col; } ;


 int TIOCGWINSZ ;
 void* atoi (char*) ;
 char* getenv (char*) ;
 scalar_t__ ioctl (int,int ,struct winsize*) ;

__attribute__((used)) static void get_term_dimensions(struct winsize *ws)
{
 char *s = getenv("LINES");

 if (s != ((void*)0)) {
  ws->ws_row = atoi(s);
  s = getenv("COLUMNS");
  if (s != ((void*)0)) {
   ws->ws_col = atoi(s);
   if (ws->ws_row && ws->ws_col)
    return;
  }
 }





 ws->ws_row = 25;
 ws->ws_col = 80;
}
