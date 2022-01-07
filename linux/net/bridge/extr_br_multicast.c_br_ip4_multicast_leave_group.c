
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bridge_mcast_own_query {int dummy; } ;
struct net_bridge_port {struct bridge_mcast_own_query ip4_own_query; } ;
struct net_bridge {int ip4_other_query; struct bridge_mcast_own_query ip4_own_query; } ;
struct TYPE_2__ {int ip4; } ;
struct br_ip {int vid; int proto; TYPE_1__ u; } ;
typedef int br_group ;
typedef int __u16 ;
typedef int __be32 ;


 int ETH_P_IP ;
 int br_multicast_leave_group (struct net_bridge*,struct net_bridge_port*,struct br_ip*,int *,struct bridge_mcast_own_query*,unsigned char const*) ;
 int htons (int ) ;
 scalar_t__ ipv4_is_local_multicast (int ) ;
 int memset (struct br_ip*,int ,int) ;

__attribute__((used)) static void br_ip4_multicast_leave_group(struct net_bridge *br,
      struct net_bridge_port *port,
      __be32 group,
      __u16 vid,
      const unsigned char *src)
{
 struct br_ip br_group;
 struct bridge_mcast_own_query *own_query;

 if (ipv4_is_local_multicast(group))
  return;

 own_query = port ? &port->ip4_own_query : &br->ip4_own_query;

 memset(&br_group, 0, sizeof(br_group));
 br_group.u.ip4 = group;
 br_group.proto = htons(ETH_P_IP);
 br_group.vid = vid;

 br_multicast_leave_group(br, port, &br_group, &br->ip4_other_query,
     own_query, src);
}
