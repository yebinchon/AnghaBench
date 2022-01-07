
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_discoverer {int num_nodes; int timer_intv; int lock; int timer; } ;


 int TIPC_DISC_FAST ;
 int TIPC_DISC_INACTIVE ;
 int TIPC_DISC_INIT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void tipc_disc_remove_dest(struct tipc_discoverer *d)
{
 int intv, num;

 spin_lock_bh(&d->lock);
 d->num_nodes--;
 num = d->num_nodes;
 intv = d->timer_intv;
 if (!num && (intv == TIPC_DISC_INACTIVE || intv > TIPC_DISC_FAST)) {
  d->timer_intv = TIPC_DISC_INIT;
  mod_timer(&d->timer, jiffies + d->timer_intv);
 }
 spin_unlock_bh(&d->lock);
}
