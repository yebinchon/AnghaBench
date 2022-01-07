
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_progress {int total; int curr; scalar_t__ size; scalar_t__ title; } ;
typedef int buf ;


 int HE_COLORSET_SELECTED ;
 int SLsmg_draw_box (int,int ,int,int) ;
 int SLsmg_fill_region (int,int,int,int,char) ;
 int SLsmg_gotorc (int ,int) ;
 int SLsmg_refresh () ;
 int SLsmg_set_color (int ) ;
 int SLsmg_write_string (char*) ;
 int SLtt_Screen_Cols ;
 int SLtt_Screen_Rows ;
 int get_title (struct ui_progress*,char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ui__lock ;
 int ui__refresh_dimensions (int) ;
 scalar_t__ use_browser ;

__attribute__((used)) static void tui_progress__update(struct ui_progress *p)
{
 char buf[100], *title = (char *) p->title;
 int bar, y;




 if (use_browser <= 0)
  return;

 if (p->total == 0)
  return;

 if (p->size) {
  get_title(p, buf, sizeof(buf));
  title = buf;
 }

 ui__refresh_dimensions(0);
 pthread_mutex_lock(&ui__lock);
 y = SLtt_Screen_Rows / 2 - 2;
 SLsmg_set_color(0);
 SLsmg_draw_box(y, 0, 3, SLtt_Screen_Cols);
 SLsmg_gotorc(y++, 1);
 SLsmg_write_string(title);
 SLsmg_fill_region(y, 1, 1, SLtt_Screen_Cols - 2, ' ');
 SLsmg_set_color(HE_COLORSET_SELECTED);
 bar = ((SLtt_Screen_Cols - 2) * p->curr) / p->total;
 SLsmg_fill_region(y, 1, 1, bar, ' ');
 SLsmg_refresh();
 pthread_mutex_unlock(&ui__lock);
}
