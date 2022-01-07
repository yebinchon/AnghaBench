
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct TYPE_2__ {int ip4; } ;
struct br_ip {int vid; int proto; TYPE_1__ u; } ;
typedef int br_group ;
typedef int __u16 ;
typedef int __be32 ;


 int ETH_P_IP ;
 int br_multicast_add_group (struct net_bridge*,struct net_bridge_port*,struct br_ip*,unsigned char const*) ;
 int htons (int ) ;
 scalar_t__ ipv4_is_local_multicast (int ) ;
 int memset (struct br_ip*,int ,int) ;

__attribute__((used)) static int br_ip4_multicast_add_group(struct net_bridge *br,
          struct net_bridge_port *port,
          __be32 group,
          __u16 vid,
          const unsigned char *src)
{
 struct br_ip br_group;

 if (ipv4_is_local_multicast(group))
  return 0;

 memset(&br_group, 0, sizeof(br_group));
 br_group.u.ip4 = group;
 br_group.proto = htons(ETH_P_IP);
 br_group.vid = vid;

 return br_multicast_add_group(br, port, &br_group, src);
}
