
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_bridge_port {scalar_t__ multicast_router; int multicast_router_timer; struct net_bridge* br; } ;
struct net_bridge {int multicast_lock; } ;


 scalar_t__ MDB_RTR_TYPE_DISABLED ;
 scalar_t__ MDB_RTR_TYPE_PERM ;
 int __del_port_router (struct net_bridge_port*) ;
 struct net_bridge_port* from_timer (int ,struct timer_list*,int ) ;
 int multicast_router_timer ;
 struct net_bridge_port* port ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void br_multicast_router_expired(struct timer_list *t)
{
 struct net_bridge_port *port =
   from_timer(port, t, multicast_router_timer);
 struct net_bridge *br = port->br;

 spin_lock(&br->multicast_lock);
 if (port->multicast_router == MDB_RTR_TYPE_DISABLED ||
     port->multicast_router == MDB_RTR_TYPE_PERM ||
     timer_pending(&port->multicast_router_timer))
  goto out;

 __del_port_router(port);
out:
 spin_unlock(&br->multicast_lock);
}
