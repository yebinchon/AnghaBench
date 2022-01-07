
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int ERR ;
 int FALSE ;
 int KEY_ESC ;
 int TRUE ;
 int keypad (int *,int ) ;
 int nodelay (int *,int ) ;
 int ungetch (int) ;
 int wgetch (int *) ;

int on_key_esc(WINDOW *win)
{
 int key;
 int key2;
 int key3;

 nodelay(win, TRUE);
 keypad(win, FALSE);
 key = wgetch(win);
 key2 = wgetch(win);
 do {
  key3 = wgetch(win);
 } while (key3 != ERR);
 nodelay(win, FALSE);
 keypad(win, TRUE);
 if (key == KEY_ESC && key2 == ERR)
  return KEY_ESC;
 else if (key != ERR && key != KEY_ESC && key2 == ERR)
  ungetch(key);

 return -1;
}
