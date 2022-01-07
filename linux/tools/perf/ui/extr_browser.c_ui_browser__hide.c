
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int helpline; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ui__lock ;
 int ui_helpline__pop () ;
 int zfree (int *) ;

void ui_browser__hide(struct ui_browser *browser)
{
 pthread_mutex_lock(&ui__lock);
 ui_helpline__pop();
 zfree(&browser->helpline);
 pthread_mutex_unlock(&ui__lock);
}
