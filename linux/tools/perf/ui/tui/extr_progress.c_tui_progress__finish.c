
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLsmg_fill_region (int,int ,int,int ,char) ;
 int SLsmg_refresh () ;
 int SLsmg_set_color (int ) ;
 int SLtt_Screen_Cols ;
 int SLtt_Screen_Rows ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ui__lock ;
 int ui__refresh_dimensions (int) ;
 scalar_t__ use_browser ;

__attribute__((used)) static void tui_progress__finish(void)
{
 int y;

 if (use_browser <= 0)
  return;

 ui__refresh_dimensions(0);
 pthread_mutex_lock(&ui__lock);
 y = SLtt_Screen_Rows / 2 - 2;
 SLsmg_set_color(0);
 SLsmg_fill_region(y, 0, 3, SLtt_Screen_Cols, ' ');
 SLsmg_refresh();
 pthread_mutex_unlock(&ui__lock);
}
