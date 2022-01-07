
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLsmg_refresh () ;
 int __ui__info_window (char const*,char const*,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ui__lock ;

void ui__info_window(const char *title, const char *text)
{
 pthread_mutex_lock(&ui__lock);
 __ui__info_window(title, text, ((void*)0));
 SLsmg_refresh();
 pthread_mutex_unlock(&ui__lock);
}
