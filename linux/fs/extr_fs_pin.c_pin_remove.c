
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct fs_pin {int done; TYPE_1__ wait; int s_list; int m_list; } ;


 int hlist_del_init (int *) ;
 int pin_lock ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up_locked (TYPE_1__*) ;

void pin_remove(struct fs_pin *pin)
{
 spin_lock(&pin_lock);
 hlist_del_init(&pin->m_list);
 hlist_del_init(&pin->s_list);
 spin_unlock(&pin_lock);
 spin_lock_irq(&pin->wait.lock);
 pin->done = 1;
 wake_up_locked(&pin->wait);
 spin_unlock_irq(&pin->wait.lock);
}
