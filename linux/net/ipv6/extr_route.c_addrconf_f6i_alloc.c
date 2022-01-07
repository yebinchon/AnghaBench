
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct inet6_dev {TYPE_2__* dev; } ;
struct in6_addr {int dummy; } ;
struct fib6_info {int dst_nocount; } ;
struct TYPE_3__ {struct net* nl_net; } ;
struct fib6_config {int fc_flags; int fc_dst_len; int fc_ignore_dev_down; int fc_type; TYPE_1__ fc_nlinfo; int fc_protocol; struct in6_addr const fc_dst; int fc_ifindex; int fc_table; } ;
typedef int gfp_t ;
struct TYPE_4__ {int ifindex; } ;


 int IS_ERR (struct fib6_info*) ;
 int RT6_TABLE_LOCAL ;
 int RTF_ANYCAST ;
 int RTF_LOCAL ;
 int RTF_NONEXTHOP ;
 int RTF_UP ;
 int RTN_ANYCAST ;
 int RTN_LOCAL ;
 int RTPROT_KERNEL ;
 struct fib6_info* ip6_route_info_create (struct fib6_config*,int ,int *) ;
 int l3mdev_fib_table (TYPE_2__*) ;

struct fib6_info *addrconf_f6i_alloc(struct net *net,
         struct inet6_dev *idev,
         const struct in6_addr *addr,
         bool anycast, gfp_t gfp_flags)
{
 struct fib6_config cfg = {
  .fc_table = l3mdev_fib_table(idev->dev) ? : RT6_TABLE_LOCAL,
  .fc_ifindex = idev->dev->ifindex,
  .fc_flags = RTF_UP | RTF_NONEXTHOP,
  .fc_dst = *addr,
  .fc_dst_len = 128,
  .fc_protocol = RTPROT_KERNEL,
  .fc_nlinfo.nl_net = net,
  .fc_ignore_dev_down = 1,
 };
 struct fib6_info *f6i;

 if (anycast) {
  cfg.fc_type = RTN_ANYCAST;
  cfg.fc_flags |= RTF_ANYCAST;
 } else {
  cfg.fc_type = RTN_LOCAL;
  cfg.fc_flags |= RTF_LOCAL;
 }

 f6i = ip6_route_info_create(&cfg, gfp_flags, ((void*)0));
 if (!IS_ERR(f6i))
  f6i->dst_nocount = 1;
 return f6i;
}
