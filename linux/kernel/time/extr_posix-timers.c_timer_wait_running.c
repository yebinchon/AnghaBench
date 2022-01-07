
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* timer_t ;
struct k_itimer {int it_id; int kclock; } ;
struct k_clock {int (* timer_wait_running ) (struct k_itimer*) ;} ;


 void* READ_ONCE (int ) ;
 int WARN_ON_ONCE (int) ;
 struct k_itimer* lock_timer (void*,unsigned long*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct k_itimer*) ;
 int unlock_timer (struct k_itimer*,unsigned long) ;

__attribute__((used)) static struct k_itimer *timer_wait_running(struct k_itimer *timer,
        unsigned long *flags)
{
 const struct k_clock *kc = READ_ONCE(timer->kclock);
 timer_t timer_id = READ_ONCE(timer->it_id);


 rcu_read_lock();
 unlock_timer(timer, *flags);

 if (!WARN_ON_ONCE(!kc->timer_wait_running))
  kc->timer_wait_running(timer);

 rcu_read_unlock();

 return lock_timer(timer_id, flags);
}
