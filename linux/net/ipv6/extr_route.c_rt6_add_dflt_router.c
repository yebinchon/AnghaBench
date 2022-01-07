
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct fib6_table {int flags; } ;
struct fib6_info {int dummy; } ;
struct TYPE_2__ {struct net* nl_net; int * nlh; int portid; } ;
struct fib6_config {int fc_flags; int fc_table; struct in6_addr fc_gateway; TYPE_1__ fc_nlinfo; int fc_type; int fc_protocol; int fc_ifindex; int fc_metric; } ;


 int GFP_ATOMIC ;
 int IP6_RT_PRIO_USER ;
 int RT6_TABLE_DFLT ;
 int RT6_TABLE_HAS_DFLT_ROUTER ;
 int RTF_ADDRCONF ;
 int RTF_DEFAULT ;
 int RTF_EXPIRES ;
 int RTF_GATEWAY ;
 int RTF_PREF (unsigned int) ;
 int RTF_UP ;
 int RTN_UNICAST ;
 int RTPROT_RA ;
 int dev_net (struct net_device*) ;
 struct fib6_table* fib6_get_table (int ,int ) ;
 int ip6_route_add (struct fib6_config*,int ,int *) ;
 int l3mdev_fib_table (struct net_device*) ;
 struct fib6_info* rt6_get_dflt_router (struct net*,struct in6_addr const*,struct net_device*) ;

struct fib6_info *rt6_add_dflt_router(struct net *net,
         const struct in6_addr *gwaddr,
         struct net_device *dev,
         unsigned int pref)
{
 struct fib6_config cfg = {
  .fc_table = l3mdev_fib_table(dev) ? : RT6_TABLE_DFLT,
  .fc_metric = IP6_RT_PRIO_USER,
  .fc_ifindex = dev->ifindex,
  .fc_flags = RTF_GATEWAY | RTF_ADDRCONF | RTF_DEFAULT |
      RTF_UP | RTF_EXPIRES | RTF_PREF(pref),
  .fc_protocol = RTPROT_RA,
  .fc_type = RTN_UNICAST,
  .fc_nlinfo.portid = 0,
  .fc_nlinfo.nlh = ((void*)0),
  .fc_nlinfo.nl_net = net,
 };

 cfg.fc_gateway = *gwaddr;

 if (!ip6_route_add(&cfg, GFP_ATOMIC, ((void*)0))) {
  struct fib6_table *table;

  table = fib6_get_table(dev_net(dev), cfg.fc_table);
  if (table)
   table->flags |= RT6_TABLE_HAS_DFLT_ROUTER;
 }

 return rt6_get_dflt_router(net, gwaddr, dev);
}
