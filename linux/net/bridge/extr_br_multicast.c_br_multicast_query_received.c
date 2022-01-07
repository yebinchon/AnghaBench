
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct bridge_mcast_other_query {int dummy; } ;
struct br_ip {int dummy; } ;


 int br_multicast_mark_router (struct net_bridge*,struct net_bridge_port*) ;
 int br_multicast_select_querier (struct net_bridge*,struct net_bridge_port*,struct br_ip*) ;
 int br_multicast_update_query_timer (struct net_bridge*,struct bridge_mcast_other_query*,unsigned long) ;

__attribute__((used)) static void br_multicast_query_received(struct net_bridge *br,
     struct net_bridge_port *port,
     struct bridge_mcast_other_query *query,
     struct br_ip *saddr,
     unsigned long max_delay)
{
 if (!br_multicast_select_querier(br, port, saddr))
  return;

 br_multicast_update_query_timer(br, query, max_delay);
 br_multicast_mark_router(br, port);
}
