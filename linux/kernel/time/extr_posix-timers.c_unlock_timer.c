
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_itimer {int it_lock; } ;


 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void unlock_timer(struct k_itimer *timr, unsigned long flags)
{
 spin_unlock_irqrestore(&timr->it_lock, flags);
}
