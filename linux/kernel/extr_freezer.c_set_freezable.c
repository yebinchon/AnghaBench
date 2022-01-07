
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PF_NOFREEZE ;
 TYPE_1__* current ;
 int freezer_lock ;
 int might_sleep () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int try_to_freeze () ;

bool set_freezable(void)
{
 might_sleep();






 spin_lock_irq(&freezer_lock);
 current->flags &= ~PF_NOFREEZE;
 spin_unlock_irq(&freezer_lock);

 return try_to_freeze();
}
