
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct in6_addr {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int ipv6_addr_any (struct in6_addr const*) ;

__attribute__((used)) static int check_src_addr(const struct in6_addr *saddr,
     struct netlink_ext_ack *extack)
{
 if (!ipv6_addr_any(saddr)) {
  NL_SET_ERR_MSG(extack, "IPv6 routes using source address can not use nexthop objects");
  return -EINVAL;
 }
 return 0;
}
