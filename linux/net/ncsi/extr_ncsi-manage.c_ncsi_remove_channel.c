
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ncsi_package {int lock; int channel_num; } ;
struct TYPE_3__ {struct ncsi_channel* vids; } ;
struct TYPE_4__ {struct ncsi_channel* addrs; } ;
struct ncsi_channel {int node; int lock; int state; TYPE_1__ vlan_filter; TYPE_2__ mac_filter; struct ncsi_package* package; } ;


 int NCSI_CHANNEL_INACTIVE ;
 int kfree (struct ncsi_channel*) ;
 int list_del_rcu (int *) ;
 int ncsi_stop_channel_monitor (struct ncsi_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ncsi_remove_channel(struct ncsi_channel *nc)
{
 struct ncsi_package *np = nc->package;
 unsigned long flags;

 spin_lock_irqsave(&nc->lock, flags);


 kfree(nc->mac_filter.addrs);
 kfree(nc->vlan_filter.vids);

 nc->state = NCSI_CHANNEL_INACTIVE;
 spin_unlock_irqrestore(&nc->lock, flags);
 ncsi_stop_channel_monitor(nc);


 spin_lock_irqsave(&np->lock, flags);
 list_del_rcu(&nc->node);
 np->channel_num--;
 spin_unlock_irqrestore(&np->lock, flags);

 kfree(nc);
}
