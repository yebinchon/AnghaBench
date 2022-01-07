
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_itimer {int it_lock; int list; } ;


 int IT_ID_SET ;
 scalar_t__ TIMER_RETRY ;
 int list_del (int *) ;
 int release_posix_timer (struct k_itimer*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ timer_delete_hook (struct k_itimer*) ;

__attribute__((used)) static void itimer_delete(struct k_itimer *timer)
{
retry_delete:
 spin_lock_irq(&timer->it_lock);

 if (timer_delete_hook(timer) == TIMER_RETRY) {
  spin_unlock_irq(&timer->it_lock);
  goto retry_delete;
 }
 list_del(&timer->list);

 spin_unlock_irq(&timer->it_lock);
 release_posix_timer(timer, IT_ID_SET);
}
