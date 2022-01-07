
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLsmg_draw_box (int,int ,int,int) ;
 int SLsmg_gotorc (int,int) ;
 int SLsmg_set_color (int ) ;
 int SLsmg_write_nstring (char*,int) ;
 int SLsmg_write_string (char*) ;
 int SLsmg_write_wrapped_string (unsigned char*,int,int,int,int,int) ;
 int SLtt_Screen_Cols ;
 int SLtt_Screen_Rows ;
 char* strchr (char const*,char) ;

void __ui__info_window(const char *title, const char *text, const char *exit_msg)
{
 int x, y;
 int max_len = 0, nr_lines = 0;
 const char *t;

 t = text;
 while (1) {
  const char *sep = strchr(t, '\n');
  int len;

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

 max_len += 2;
 nr_lines += 2;
 if (exit_msg)
  nr_lines += 2;
 y = SLtt_Screen_Rows / 2 - nr_lines / 2,
 x = SLtt_Screen_Cols / 2 - max_len / 2;

 SLsmg_set_color(0);
 SLsmg_draw_box(y, x++, nr_lines, max_len);
 if (title) {
  SLsmg_gotorc(y, x + 1);
  SLsmg_write_string((char *)title);
 }
 SLsmg_gotorc(++y, x);
 if (exit_msg)
  nr_lines -= 2;
 max_len -= 2;
 SLsmg_write_wrapped_string((unsigned char *)text, y, x,
       nr_lines, max_len, 1);
 if (exit_msg) {
  SLsmg_gotorc(y + nr_lines - 2, x);
  SLsmg_write_nstring((char *)" ", max_len);
  SLsmg_gotorc(y + nr_lines - 1, x);
  SLsmg_write_nstring((char *)exit_msg, max_len);
 }
}
