
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {scalar_t__ state; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ multicast_startup_query_count; int multicast_lock; } ;
struct bridge_mcast_own_query {scalar_t__ startup_sent; } ;


 scalar_t__ BR_STATE_BLOCKING ;
 scalar_t__ BR_STATE_DISABLED ;
 int br_multicast_send_query (struct net_bridge*,struct net_bridge_port*,struct bridge_mcast_own_query*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
br_multicast_port_query_expired(struct net_bridge_port *port,
    struct bridge_mcast_own_query *query)
{
 struct net_bridge *br = port->br;

 spin_lock(&br->multicast_lock);
 if (port->state == BR_STATE_DISABLED ||
     port->state == BR_STATE_BLOCKING)
  goto out;

 if (query->startup_sent < br->multicast_startup_query_count)
  query->startup_sent++;

 br_multicast_send_query(port->br, port, query);

out:
 spin_unlock(&br->multicast_lock);
}
