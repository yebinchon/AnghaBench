
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_discoverer {int lock; int num_nodes; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void tipc_disc_add_dest(struct tipc_discoverer *d)
{
 spin_lock_bh(&d->lock);
 d->num_nodes++;
 spin_unlock_bh(&d->lock);
}
