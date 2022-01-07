
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_bridge_port {int ip4_own_query; } ;
struct TYPE_2__ {int timer; } ;


 int br_multicast_port_query_expired (struct net_bridge_port*,int *) ;
 struct net_bridge_port* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ ip4_own_query ;
 struct net_bridge_port* port ;

__attribute__((used)) static void br_ip4_multicast_port_query_expired(struct timer_list *t)
{
 struct net_bridge_port *port = from_timer(port, t, ip4_own_query.timer);

 br_multicast_port_query_expired(port, &port->ip4_own_query);
}
