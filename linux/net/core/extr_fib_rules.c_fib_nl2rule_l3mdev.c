
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib_rule {int dummy; } ;


 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;

__attribute__((used)) static int fib_nl2rule_l3mdev(struct nlattr *nla, struct fib_rule *nlrule,
         struct netlink_ext_ack *extack)
{
 NL_SET_ERR_MSG(extack, "l3mdev support is not enabled in kernel");
 return -1;
}
