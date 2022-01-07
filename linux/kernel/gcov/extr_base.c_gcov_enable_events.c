
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int dummy; } ;


 int GCOV_ADD ;
 int cond_resched () ;
 int gcov_event (int ,struct gcov_info*) ;
 int gcov_events_enabled ;
 struct gcov_info* gcov_info_next (struct gcov_info*) ;
 int gcov_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gcov_enable_events(void)
{
 struct gcov_info *info = ((void*)0);

 mutex_lock(&gcov_lock);
 gcov_events_enabled = 1;


 while ((info = gcov_info_next(info))) {
  gcov_event(GCOV_ADD, info);
  cond_resched();
 }

 mutex_unlock(&gcov_lock);
}
