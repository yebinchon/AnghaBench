
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int VERBOSE_TOROUT_STRING (char*) ;
 int kthread_stop (struct task_struct*) ;

void _torture_stop_kthread(char *m, struct task_struct **tp)
{
 if (*tp == ((void*)0))
  return;
 VERBOSE_TOROUT_STRING(m);
 kthread_stop(*tp);
 *tp = ((void*)0);
}
