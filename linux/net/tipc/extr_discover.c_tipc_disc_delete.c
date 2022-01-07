
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_discoverer {int skb; int timer; } ;


 int del_timer_sync (int *) ;
 int kfree (struct tipc_discoverer*) ;
 int kfree_skb (int ) ;

void tipc_disc_delete(struct tipc_discoverer *d)
{
 del_timer_sync(&d->timer);
 kfree_skb(d->skb);
 kfree(d);
}
