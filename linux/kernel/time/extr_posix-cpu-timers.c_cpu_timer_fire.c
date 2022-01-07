
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_timer {int dummy; } ;
struct TYPE_2__ {struct cpu_timer cpu; } ;
struct k_itimer {int it_sigev_notify; int it_requeue_pending; int it_interval; int it_process; int * sigq; TYPE_1__ it; } ;


 int SIGEV_NONE ;
 int SIGEV_THREAD_ID ;
 int cpu_timer_setexpires (struct cpu_timer*,int ) ;
 int posix_cpu_timer_rearm (struct k_itimer*) ;
 scalar_t__ posix_timer_event (struct k_itimer*,int ) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void cpu_timer_fire(struct k_itimer *timer)
{
 struct cpu_timer *ctmr = &timer->it.cpu;

 if ((timer->it_sigev_notify & ~SIGEV_THREAD_ID) == SIGEV_NONE) {



  cpu_timer_setexpires(ctmr, 0);
 } else if (unlikely(timer->sigq == ((void*)0))) {




  wake_up_process(timer->it_process);
  cpu_timer_setexpires(ctmr, 0);
 } else if (!timer->it_interval) {



  posix_timer_event(timer, 0);
  cpu_timer_setexpires(ctmr, 0);
 } else if (posix_timer_event(timer, ++timer->it_requeue_pending)) {






  posix_cpu_timer_rearm(timer);
  ++timer->it_requeue_pending;
 }
}
