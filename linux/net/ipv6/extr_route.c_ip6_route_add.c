
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct fib6_info {int dummy; } ;
struct fib6_config {int fc_nlinfo; } ;
typedef int gfp_t ;


 scalar_t__ IS_ERR (struct fib6_info*) ;
 int PTR_ERR (struct fib6_info*) ;
 int __ip6_ins_rt (struct fib6_info*,int *,struct netlink_ext_ack*) ;
 int fib6_info_release (struct fib6_info*) ;
 struct fib6_info* ip6_route_info_create (struct fib6_config*,int ,struct netlink_ext_ack*) ;

int ip6_route_add(struct fib6_config *cfg, gfp_t gfp_flags,
    struct netlink_ext_ack *extack)
{
 struct fib6_info *rt;
 int err;

 rt = ip6_route_info_create(cfg, gfp_flags, extack);
 if (IS_ERR(rt))
  return PTR_ERR(rt);

 err = __ip6_ins_rt(rt, &cfg->fc_nlinfo, extack);
 fib6_info_release(rt);

 return err;
}
