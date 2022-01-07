
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int IFLA_MAX ;
 int ifla_policy ;
 int nla_parse_deprecated (struct nlattr**,int ,struct nlattr const*,int,int ,struct netlink_ext_ack*) ;

int rtnl_nla_parse_ifla(struct nlattr **tb, const struct nlattr *head, int len,
   struct netlink_ext_ack *exterr)
{
 return nla_parse_deprecated(tb, IFLA_MAX, head, len, ifla_policy,
        exterr);
}
