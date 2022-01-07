
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {scalar_t__ multicast_router; TYPE_1__* br; int rlist; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MDB_RTR_TYPE_TEMP ;
 scalar_t__ MDB_RTR_TYPE_TEMP_QUERY ;
 int RTM_DELMDB ;
 int br_port_mc_router_state_change (struct net_bridge_port*,int) ;
 int br_rtr_notify (int ,struct net_bridge_port*,int ) ;
 int hlist_del_init_rcu (int *) ;
 scalar_t__ hlist_unhashed (int *) ;

__attribute__((used)) static void __del_port_router(struct net_bridge_port *p)
{
 if (hlist_unhashed(&p->rlist))
  return;
 hlist_del_init_rcu(&p->rlist);
 br_rtr_notify(p->br->dev, p, RTM_DELMDB);
 br_port_mc_router_state_change(p, 0);


 if (p->multicast_router == MDB_RTR_TYPE_TEMP)
  p->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
}
