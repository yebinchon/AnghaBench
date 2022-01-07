
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int ifindex; } ;
struct TYPE_2__ {int nl_net; } ;
struct fib6_config {int fc_dst_len; int fc_dst; TYPE_1__ fc_nlinfo; int fc_type; int fc_flags; int fc_ifindex; int fc_metric; int fc_table; } ;


 int GFP_KERNEL ;
 int IP6_RT_PRIO_ADDRCONF ;
 int RT6_TABLE_LOCAL ;
 int RTF_UP ;
 int RTN_UNICAST ;
 int dev_net (struct net_device*) ;
 int htonl (int) ;
 int ip6_route_add (struct fib6_config*,int ,int *) ;
 int ipv6_addr_set (int *,int ,int ,int ,int ) ;
 int l3mdev_fib_table (struct net_device*) ;

__attribute__((used)) static void addrconf_add_mroute(struct net_device *dev)
{
 struct fib6_config cfg = {
  .fc_table = l3mdev_fib_table(dev) ? : RT6_TABLE_LOCAL,
  .fc_metric = IP6_RT_PRIO_ADDRCONF,
  .fc_ifindex = dev->ifindex,
  .fc_dst_len = 8,
  .fc_flags = RTF_UP,
  .fc_type = RTN_UNICAST,
  .fc_nlinfo.nl_net = dev_net(dev),
 };

 ipv6_addr_set(&cfg.fc_dst, htonl(0xFF000000), 0, 0, 0);

 ip6_route_add(&cfg, GFP_KERNEL, ((void*)0));
}
