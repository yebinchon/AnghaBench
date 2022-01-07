
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fib6_nh {int fib_nh_flags; } ;
struct nh_info {struct fib6_nh fib6_nh; } ;
struct TYPE_3__ {int ipv6; } ;
struct nh_config {TYPE_1__ gw; int nh_encap_type; int nh_encap; int nh_flags; int nh_ifindex; int dev; } ;
struct nexthop {int nh_flags; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct fib6_config {int fc_flags; int fc_encap_type; int fc_encap; int fc_gateway; int fc_ifindex; int fc_table; } ;
struct TYPE_4__ {int (* fib6_nh_init ) (struct net*,struct fib6_nh*,struct fib6_config*,int ,struct netlink_ext_ack*) ;int (* fib6_nh_release ) (struct fib6_nh*) ;} ;


 int GFP_KERNEL ;
 int RTF_GATEWAY ;
 int ipv6_addr_any (int *) ;
 TYPE_2__* ipv6_stub ;
 int l3mdev_fib_table (int ) ;
 int stub1 (struct net*,struct fib6_nh*,struct fib6_config*,int ,struct netlink_ext_ack*) ;
 int stub2 (struct fib6_nh*) ;

__attribute__((used)) static int nh_create_ipv6(struct net *net, struct nexthop *nh,
     struct nh_info *nhi, struct nh_config *cfg,
     struct netlink_ext_ack *extack)
{
 struct fib6_nh *fib6_nh = &nhi->fib6_nh;
 struct fib6_config fib6_cfg = {
  .fc_table = l3mdev_fib_table(cfg->dev),
  .fc_ifindex = cfg->nh_ifindex,
  .fc_gateway = cfg->gw.ipv6,
  .fc_flags = cfg->nh_flags,
  .fc_encap = cfg->nh_encap,
  .fc_encap_type = cfg->nh_encap_type,
 };
 int err;

 if (!ipv6_addr_any(&cfg->gw.ipv6))
  fib6_cfg.fc_flags |= RTF_GATEWAY;


 err = ipv6_stub->fib6_nh_init(net, fib6_nh, &fib6_cfg, GFP_KERNEL,
          extack);
 if (err)
  ipv6_stub->fib6_nh_release(fib6_nh);
 else
  nh->nh_flags = fib6_nh->fib_nh_flags;

 return err;
}
