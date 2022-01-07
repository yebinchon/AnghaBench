
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ expires; } ;
struct restart_block {TYPE_2__ nanosleep; } ;
struct TYPE_5__ {int cpu; } ;
struct k_itimer {int it_overrun; struct timespec64 it_value; int it_lock; TYPE_1__ it; TYPE_3__* it_process; int it_clock; } ;
struct itimerspec64 {int it_overrun; struct timespec64 it_value; int it_lock; TYPE_1__ it; TYPE_3__* it_process; int it_clock; } ;
typedef int it ;
typedef int clockid_t ;
struct TYPE_7__ {struct restart_block restart_block; } ;


 int ERESTART_RESTARTBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int TIMER_RETRY ;
 scalar_t__ TT_NONE ;
 int __set_current_state (int ) ;
 scalar_t__ cpu_timer_getexpires (int *) ;
 TYPE_3__* current ;
 int memset (struct k_itimer*,int ,int) ;
 int nanosleep_copyout (struct restart_block*,struct timespec64*) ;
 int posix_cpu_timer_create (struct k_itimer*) ;
 int posix_cpu_timer_del (struct k_itimer*) ;
 int posix_cpu_timer_set (struct k_itimer*,int,struct k_itimer*,struct k_itimer*) ;
 int schedule () ;
 int signal_pending (TYPE_3__*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int do_cpu_nanosleep(const clockid_t which_clock, int flags,
       const struct timespec64 *rqtp)
{
 struct itimerspec64 it;
 struct k_itimer timer;
 u64 expires;
 int error;




 memset(&timer, 0, sizeof timer);
 spin_lock_init(&timer.it_lock);
 timer.it_clock = which_clock;
 timer.it_overrun = -1;
 error = posix_cpu_timer_create(&timer);
 timer.it_process = current;

 if (!error) {
  static struct itimerspec64 zero_it;
  struct restart_block *restart;

  memset(&it, 0, sizeof(it));
  it.it_value = *rqtp;

  spin_lock_irq(&timer.it_lock);
  error = posix_cpu_timer_set(&timer, flags, &it, ((void*)0));
  if (error) {
   spin_unlock_irq(&timer.it_lock);
   return error;
  }

  while (!signal_pending(current)) {
   if (!cpu_timer_getexpires(&timer.it.cpu)) {




    posix_cpu_timer_del(&timer);
    spin_unlock_irq(&timer.it_lock);
    return 0;
   }




   __set_current_state(TASK_INTERRUPTIBLE);
   spin_unlock_irq(&timer.it_lock);
   schedule();
   spin_lock_irq(&timer.it_lock);
  }




  expires = cpu_timer_getexpires(&timer.it.cpu);
  error = posix_cpu_timer_set(&timer, 0, &zero_it, &it);
  if (!error) {



   posix_cpu_timer_del(&timer);
  }
  spin_unlock_irq(&timer.it_lock);

  while (error == TIMER_RETRY) {





   spin_lock_irq(&timer.it_lock);
   error = posix_cpu_timer_del(&timer);
   spin_unlock_irq(&timer.it_lock);
  }

  if ((it.it_value.tv_sec | it.it_value.tv_nsec) == 0) {



   return 0;
  }

  error = -ERESTART_RESTARTBLOCK;



  restart = &current->restart_block;
  restart->nanosleep.expires = expires;
  if (restart->nanosleep.type != TT_NONE)
   error = nanosleep_copyout(restart, &it.it_value);
 }

 return error;
}
