
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int K_BKSPC ;
 int K_ENTER ;
 int K_ESC ;
 int K_TIMER ;
 int SLsmg_draw_box (int,int,int,int) ;
 int SLsmg_gotorc (int,int) ;
 int SLsmg_refresh () ;
 int SLsmg_set_color (int ) ;
 int SLsmg_write_char (int) ;
 int SLsmg_write_nstring (char*,int) ;
 int SLsmg_write_string (char*) ;
 int SLsmg_write_wrapped_string (unsigned char*,int,int,int,int,int) ;
 int SLtt_Screen_Cols ;
 int SLtt_Screen_Rows ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 char* strchr (char const*,char) ;
 int strncpy (char*,char*,int) ;
 int ui__getch (int) ;
 int ui__lock ;
 int ui_helpline__push (char*) ;

int ui_browser__input_window(const char *title, const char *text, char *input,
        const char *exit_msg, int delay_secs)
{
 int x, y, len, key;
 int max_len = 60, nr_lines = 0;
 static char buf[50];
 const char *t;

 t = text;
 while (1) {
  const char *sep = strchr(t, '\n');

  if (sep == ((void*)0))
   sep = strchr(t, '\0');
  len = sep - t;
  if (max_len < len)
   max_len = len;
  ++nr_lines;
  if (*sep == '\0')
   break;
  t = sep + 1;
 }

 pthread_mutex_lock(&ui__lock);

 max_len += 2;
 nr_lines += 8;
 y = SLtt_Screen_Rows / 2 - nr_lines / 2;
 x = SLtt_Screen_Cols / 2 - max_len / 2;

 SLsmg_set_color(0);
 SLsmg_draw_box(y, x++, nr_lines, max_len);
 if (title) {
  SLsmg_gotorc(y, x + 1);
  SLsmg_write_string((char *)title);
 }
 SLsmg_gotorc(++y, x);
 nr_lines -= 7;
 max_len -= 2;
 SLsmg_write_wrapped_string((unsigned char *)text, y, x,
       nr_lines, max_len, 1);
 y += nr_lines;
 len = 5;
 while (len--) {
  SLsmg_gotorc(y + len - 1, x);
  SLsmg_write_nstring((char *)" ", max_len);
 }
 SLsmg_draw_box(y++, x + 1, 3, max_len - 2);

 SLsmg_gotorc(y + 3, x);
 SLsmg_write_nstring((char *)exit_msg, max_len);
 SLsmg_refresh();

 pthread_mutex_unlock(&ui__lock);

 x += 2;
 len = 0;
 key = ui__getch(delay_secs);
 while (key != K_TIMER && key != K_ENTER && key != K_ESC) {
  pthread_mutex_lock(&ui__lock);

  if (key == K_BKSPC) {
   if (len == 0) {
    pthread_mutex_unlock(&ui__lock);
    goto next_key;
   }
   SLsmg_gotorc(y, x + --len);
   SLsmg_write_char(' ');
  } else {
   buf[len] = key;
   SLsmg_gotorc(y, x + len++);
   SLsmg_write_char(key);
  }
  SLsmg_refresh();

  pthread_mutex_unlock(&ui__lock);


  if (len == sizeof(buf) - 1) {
   ui_helpline__push("maximum size of symbol name reached!");
   key = K_ENTER;
   break;
  }
next_key:
  key = ui__getch(delay_secs);
 }

 buf[len] = '\0';
 strncpy(input, buf, len+1);
 return key;
}
