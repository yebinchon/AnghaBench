
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERBOSE_TOROUT_STRING (char*) ;
 int kthread_stop (int *) ;
 int * stutter_task ;

__attribute__((used)) static void torture_stutter_cleanup(void)
{
 if (!stutter_task)
  return;
 VERBOSE_TOROUT_STRING("Stopping torture_stutter task");
 kthread_stop(stutter_task);
 stutter_task = ((void*)0);
}
