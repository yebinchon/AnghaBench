
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {scalar_t__ multicast_router; int multicast_router_timer; } ;
struct net_bridge {scalar_t__ multicast_router; scalar_t__ multicast_querier_interval; int multicast_router_timer; } ;


 scalar_t__ MDB_RTR_TYPE_DISABLED ;
 scalar_t__ MDB_RTR_TYPE_PERM ;
 scalar_t__ MDB_RTR_TYPE_TEMP_QUERY ;
 int br_mc_router_state_change (struct net_bridge*,int) ;
 int br_multicast_add_router (struct net_bridge*,struct net_bridge_port*) ;
 unsigned long jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;

__attribute__((used)) static void br_multicast_mark_router(struct net_bridge *br,
         struct net_bridge_port *port)
{
 unsigned long now = jiffies;

 if (!port) {
  if (br->multicast_router == MDB_RTR_TYPE_TEMP_QUERY) {
   if (!timer_pending(&br->multicast_router_timer))
    br_mc_router_state_change(br, 1);
   mod_timer(&br->multicast_router_timer,
      now + br->multicast_querier_interval);
  }
  return;
 }

 if (port->multicast_router == MDB_RTR_TYPE_DISABLED ||
     port->multicast_router == MDB_RTR_TYPE_PERM)
  return;

 br_multicast_add_router(br, port);

 mod_timer(&port->multicast_router_timer,
    now + br->multicast_querier_interval);
}
