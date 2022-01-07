
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int dummy; } ;


 int __ui_browser__show_title (struct ui_browser*,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ui__lock ;

void ui_browser__show_title(struct ui_browser *browser, const char *title)
{
 pthread_mutex_lock(&ui__lock);
 __ui_browser__show_title(browser, title);
 pthread_mutex_unlock(&ui__lock);
}
