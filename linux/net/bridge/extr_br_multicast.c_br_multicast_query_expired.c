
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {scalar_t__ multicast_startup_query_count; int multicast_lock; } ;
struct bridge_mcast_querier {int port; } ;
struct bridge_mcast_own_query {scalar_t__ startup_sent; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int br_multicast_send_query (struct net_bridge*,int *,struct bridge_mcast_own_query*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_multicast_query_expired(struct net_bridge *br,
           struct bridge_mcast_own_query *query,
           struct bridge_mcast_querier *querier)
{
 spin_lock(&br->multicast_lock);
 if (query->startup_sent < br->multicast_startup_query_count)
  query->startup_sent++;

 RCU_INIT_POINTER(querier->port, ((void*)0));
 br_multicast_send_query(br, ((void*)0), query);
 spin_unlock(&br->multicast_lock);
}
