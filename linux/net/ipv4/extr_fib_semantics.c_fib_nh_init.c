
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int fib_num_tclassid_users; } ;
struct net {TYPE_1__ ipv4; } ;
struct fib_nh {scalar_t__ fib_nh_gw_family; int fib_nh_weight; scalar_t__ nh_tclassid; int fib_nh_flags; int fib_nh_gw6; int fib_nh_gw4; int fib_nh_oif; int nh_common; scalar_t__ fib_nh_family; } ;
struct fib_config {scalar_t__ fc_gw_family; scalar_t__ fc_flow; int fc_flags; int fc_gw6; int fc_gw4; int fc_oif; int fc_encap_type; int fc_encap; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int GFP_KERNEL ;
 int fib_nh_common_init (int *,int ,int ,struct fib_config*,int ,struct netlink_ext_ack*) ;

int fib_nh_init(struct net *net, struct fib_nh *nh,
  struct fib_config *cfg, int nh_weight,
  struct netlink_ext_ack *extack)
{
 int err;

 nh->fib_nh_family = AF_INET;

 err = fib_nh_common_init(&nh->nh_common, cfg->fc_encap,
     cfg->fc_encap_type, cfg, GFP_KERNEL, extack);
 if (err)
  return err;

 nh->fib_nh_oif = cfg->fc_oif;
 nh->fib_nh_gw_family = cfg->fc_gw_family;
 if (cfg->fc_gw_family == AF_INET)
  nh->fib_nh_gw4 = cfg->fc_gw4;
 else if (cfg->fc_gw_family == AF_INET6)
  nh->fib_nh_gw6 = cfg->fc_gw6;

 nh->fib_nh_flags = cfg->fc_flags;
 return 0;
}
