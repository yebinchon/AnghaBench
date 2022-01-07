
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLsmg_reinit_smg () ;
 int SLtt_get_screen_size () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ui__lock ;
 scalar_t__ ui__need_resize ;

void ui__refresh_dimensions(bool force)
{
 if (force || ui__need_resize) {
  ui__need_resize = 0;
  pthread_mutex_lock(&ui__lock);
  SLtt_get_screen_size();
  SLsmg_reinit_smg();
  pthread_mutex_unlock(&ui__lock);
 }
}
