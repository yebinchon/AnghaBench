
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct fib6_nh {int dummy; } ;
struct fib6_config {int dummy; } ;
typedef int gfp_t ;


 int EAFNOSUPPORT ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;

__attribute__((used)) static int eafnosupport_fib6_nh_init(struct net *net, struct fib6_nh *fib6_nh,
         struct fib6_config *cfg, gfp_t gfp_flags,
         struct netlink_ext_ack *extack)
{
 NL_SET_ERR_MSG(extack, "IPv6 support not enabled in kernel");
 return -EAFNOSUPPORT;
}
