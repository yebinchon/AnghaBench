
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_bridge {int ip4_querier; int ip4_own_query; } ;
struct TYPE_2__ {int timer; } ;


 struct net_bridge* br ;
 int br_multicast_query_expired (struct net_bridge*,int *,int *) ;
 struct net_bridge* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ ip4_own_query ;

__attribute__((used)) static void br_ip4_multicast_query_expired(struct timer_list *t)
{
 struct net_bridge *br = from_timer(br, t, ip4_own_query.timer);

 br_multicast_query_expired(br, &br->ip4_own_query, &br->ip4_querier);
}
