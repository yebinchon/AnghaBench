
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ timer_t ;
struct k_itimer {scalar_t__ it_signal; int it_lock; } ;
struct TYPE_2__ {scalar_t__ signal; } ;


 unsigned long long INT_MAX ;
 TYPE_1__* current ;
 struct k_itimer* posix_timer_by_id (scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct k_itimer *__lock_timer(timer_t timer_id, unsigned long *flags)
{
 struct k_itimer *timr;





 if ((unsigned long long)timer_id > INT_MAX)
  return ((void*)0);

 rcu_read_lock();
 timr = posix_timer_by_id(timer_id);
 if (timr) {
  spin_lock_irqsave(&timr->it_lock, *flags);
  if (timr->it_signal == current->signal) {
   rcu_read_unlock();
   return timr;
  }
  spin_unlock_irqrestore(&timr->it_lock, *flags);
 }
 rcu_read_unlock();

 return ((void*)0);
}
