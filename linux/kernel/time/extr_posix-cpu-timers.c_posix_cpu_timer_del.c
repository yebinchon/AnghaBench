
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct sighand_struct {int dummy; } ;
struct cpu_timer {scalar_t__ firing; int node; scalar_t__ head; struct task_struct* task; } ;
struct TYPE_2__ {struct cpu_timer cpu; } ;
struct k_itimer {TYPE_1__ it; } ;


 int EINVAL ;
 int TIMER_RETRY ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_timer_dequeue (struct cpu_timer*) ;
 struct sighand_struct* lock_task_sighand (struct task_struct*,unsigned long*) ;
 int put_task_struct (struct task_struct*) ;
 scalar_t__ timerqueue_node_queued (int *) ;
 scalar_t__ unlikely (int ) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static int posix_cpu_timer_del(struct k_itimer *timer)
{
 struct cpu_timer *ctmr = &timer->it.cpu;
 struct task_struct *p = ctmr->task;
 struct sighand_struct *sighand;
 unsigned long flags;
 int ret = 0;

 if (WARN_ON_ONCE(!p))
  return -EINVAL;





 sighand = lock_task_sighand(p, &flags);
 if (unlikely(sighand == ((void*)0))) {




  WARN_ON_ONCE(ctmr->head || timerqueue_node_queued(&ctmr->node));
 } else {
  if (timer->it.cpu.firing)
   ret = TIMER_RETRY;
  else
   cpu_timer_dequeue(ctmr);

  unlock_task_sighand(p, &flags);
 }

 if (!ret)
  put_task_struct(p);

 return ret;
}
