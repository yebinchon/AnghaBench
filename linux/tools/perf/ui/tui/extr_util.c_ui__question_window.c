
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLsmg_refresh () ;
 int __ui__info_window (char const*,char const*,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ui__getch (int) ;
 int ui__lock ;

int ui__question_window(const char *title, const char *text,
   const char *exit_msg, int delay_secs)
{
 pthread_mutex_lock(&ui__lock);
 __ui__info_window(title, text, exit_msg);
 SLsmg_refresh();
 pthread_mutex_unlock(&ui__lock);
 return ui__getch(delay_secs);
}
