
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct in6_addr {int dummy; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 scalar_t__ ETH_ALEN ;
 size_t IFLA_ADDRESS ;
 size_t IFLA_GRE_REMOTE ;
 int ip6gre_tunnel_validate (struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ;
 scalar_t__ ipv6_addr_any (struct in6_addr*) ;
 int is_valid_ether_addr (int ) ;
 int nla_data (struct nlattr*) ;
 struct in6_addr nla_get_in6_addr (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;

__attribute__((used)) static int ip6gre_tap_validate(struct nlattr *tb[], struct nlattr *data[],
          struct netlink_ext_ack *extack)
{
 struct in6_addr daddr;

 if (tb[IFLA_ADDRESS]) {
  if (nla_len(tb[IFLA_ADDRESS]) != ETH_ALEN)
   return -EINVAL;
  if (!is_valid_ether_addr(nla_data(tb[IFLA_ADDRESS])))
   return -EADDRNOTAVAIL;
 }

 if (!data)
  goto out;

 if (data[IFLA_GRE_REMOTE]) {
  daddr = nla_get_in6_addr(data[IFLA_GRE_REMOTE]);
  if (ipv6_addr_any(&daddr))
   return -EINVAL;
 }

out:
 return ip6gre_tunnel_validate(tb, data, extack);
}
