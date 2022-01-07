
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_3__ {struct task_struct* task; int node; } ;
struct TYPE_4__ {TYPE_1__ cpu; } ;
struct k_itimer {TYPE_2__ it; int * kclock; int it_clock; } ;


 int EINVAL ;
 int clock_posix_cpu ;
 struct task_struct* get_task_for_clock (int ) ;
 int timerqueue_init (int *) ;

__attribute__((used)) static int posix_cpu_timer_create(struct k_itimer *new_timer)
{
 struct task_struct *p = get_task_for_clock(new_timer->it_clock);

 if (!p)
  return -EINVAL;

 new_timer->kclock = &clock_posix_cpu;
 timerqueue_init(&new_timer->it.cpu.node);
 new_timer->it.cpu.task = p;
 return 0;
}
