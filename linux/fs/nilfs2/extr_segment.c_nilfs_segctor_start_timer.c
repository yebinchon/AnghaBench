
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct nilfs_sc_info {int sc_state; int sc_state_lock; TYPE_1__ sc_timer; scalar_t__ sc_interval; } ;


 int NILFS_SEGCTOR_COMMIT ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nilfs_segctor_start_timer(struct nilfs_sc_info *sci)
{
 spin_lock(&sci->sc_state_lock);
 if (!(sci->sc_state & NILFS_SEGCTOR_COMMIT)) {
  sci->sc_timer.expires = jiffies + sci->sc_interval;
  add_timer(&sci->sc_timer);
  sci->sc_state |= NILFS_SEGCTOR_COMMIT;
 }
 spin_unlock(&sci->sc_state_lock);
}
