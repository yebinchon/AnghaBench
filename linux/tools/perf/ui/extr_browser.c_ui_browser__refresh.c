
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int dummy; } ;


 int __ui_browser__refresh (struct ui_browser*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ui__lock ;

int ui_browser__refresh(struct ui_browser *browser)
{
 pthread_mutex_lock(&ui__lock);
 __ui_browser__refresh(browser);
 pthread_mutex_unlock(&ui__lock);

 return 0;
}
