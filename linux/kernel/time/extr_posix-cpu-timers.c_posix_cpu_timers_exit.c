
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int posix_cputimers; } ;


 int cleanup_timers (int *) ;

void posix_cpu_timers_exit(struct task_struct *tsk)
{
 cleanup_timers(&tsk->posix_cputimers);
}
