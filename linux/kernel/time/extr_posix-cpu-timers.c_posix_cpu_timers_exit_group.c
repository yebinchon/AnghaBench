
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {int posix_cputimers; } ;


 int cleanup_timers (int *) ;

void posix_cpu_timers_exit_group(struct task_struct *tsk)
{
 cleanup_timers(&tsk->signal->posix_cputimers);
}
