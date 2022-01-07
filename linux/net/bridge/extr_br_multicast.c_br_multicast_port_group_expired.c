
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_bridge_port_group {int flags; int mglist; int timer; TYPE_1__* port; } ;
struct net_bridge {int multicast_lock; int dev; } ;
struct TYPE_2__ {struct net_bridge* br; } ;


 int MDB_PG_FLAGS_PERMANENT ;
 int br_multicast_del_pg (struct net_bridge*,struct net_bridge_port_group*) ;
 struct net_bridge_port_group* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ hlist_unhashed (int *) ;
 int netif_running (int ) ;
 struct net_bridge_port_group* pg ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void br_multicast_port_group_expired(struct timer_list *t)
{
 struct net_bridge_port_group *pg = from_timer(pg, t, timer);
 struct net_bridge *br = pg->port->br;

 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev) || timer_pending(&pg->timer) ||
     hlist_unhashed(&pg->mglist) || pg->flags & MDB_PG_FLAGS_PERMANENT)
  goto out;

 br_multicast_del_pg(br, pg);

out:
 spin_unlock(&br->multicast_lock);
}
