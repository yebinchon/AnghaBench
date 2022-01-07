
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnexthop {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib_info {int dummy; } ;
struct fib_config {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;

__attribute__((used)) static int fib_get_nhs(struct fib_info *fi, struct rtnexthop *rtnh,
         int remaining, struct fib_config *cfg,
         struct netlink_ext_ack *extack)
{
 NL_SET_ERR_MSG(extack, "Multipath support not enabled in kernel");

 return -EINVAL;
}
