
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fib_nh {int fib_nh_scope; int nh_common; int fib_nh_flags; } ;
struct nh_info {struct fib_nh fib_nh; } ;
struct TYPE_2__ {int ipv4; } ;
struct nh_config {int dev; int nh_encap_type; int nh_encap; int nh_flags; TYPE_1__ gw; int nh_ifindex; } ;
struct nexthop {int nh_flags; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct fib_config {int fc_encap_type; int fc_encap; int fc_flags; int fc_gw_family; int fc_gw4; int fc_oif; } ;


 int AF_INET ;
 int fib_check_nh (struct net*,struct fib_nh*,int ,int ,struct netlink_ext_ack*) ;
 int fib_info_update_nhc_saddr (struct net*,int *,int ) ;
 int fib_nh_init (struct net*,struct fib_nh*,struct fib_config*,int,struct netlink_ext_ack*) ;
 int fib_nh_release (struct net*,struct fib_nh*) ;
 int l3mdev_fib_table (int ) ;

__attribute__((used)) static int nh_create_ipv4(struct net *net, struct nexthop *nh,
     struct nh_info *nhi, struct nh_config *cfg,
     struct netlink_ext_ack *extack)
{
 struct fib_nh *fib_nh = &nhi->fib_nh;
 struct fib_config fib_cfg = {
  .fc_oif = cfg->nh_ifindex,
  .fc_gw4 = cfg->gw.ipv4,
  .fc_gw_family = cfg->gw.ipv4 ? AF_INET : 0,
  .fc_flags = cfg->nh_flags,
  .fc_encap = cfg->nh_encap,
  .fc_encap_type = cfg->nh_encap_type,
 };
 u32 tb_id = l3mdev_fib_table(cfg->dev);
 int err;

 err = fib_nh_init(net, fib_nh, &fib_cfg, 1, extack);
 if (err) {
  fib_nh_release(net, fib_nh);
  goto out;
 }


 err = fib_check_nh(net, fib_nh, tb_id, 0, extack);
 if (!err) {
  nh->nh_flags = fib_nh->fib_nh_flags;
  fib_info_update_nhc_saddr(net, &fib_nh->nh_common,
       fib_nh->fib_nh_scope);
 } else {
  fib_nh_release(net, fib_nh);
 }
out:
 return err;
}
