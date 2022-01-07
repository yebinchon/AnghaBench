
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;


 size_t IPSET_ATTR_IPADDR_IPV6 ;
 int IPSET_ATTR_IPADDR_MAX ;
 int IPSET_ERR_PROTOCOL ;
 int flag_nested (struct nlattr*) ;
 int ip_set_attr_netorder (struct nlattr**,size_t) ;
 int ipaddr_policy ;
 int memcpy (union nf_inet_addr*,int ,int) ;
 int nla_data (struct nlattr*) ;
 scalar_t__ nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 scalar_t__ unlikely (int) ;

int
ip_set_get_ipaddr6(struct nlattr *nla, union nf_inet_addr *ipaddr)
{
 struct nlattr *tb[IPSET_ATTR_IPADDR_MAX + 1];

 if (unlikely(!flag_nested(nla)))
  return -IPSET_ERR_PROTOCOL;

 if (nla_parse_nested(tb, IPSET_ATTR_IPADDR_MAX, nla,
        ipaddr_policy, ((void*)0)))
  return -IPSET_ERR_PROTOCOL;
 if (unlikely(!ip_set_attr_netorder(tb, IPSET_ATTR_IPADDR_IPV6)))
  return -IPSET_ERR_PROTOCOL;

 memcpy(ipaddr, nla_data(tb[IPSET_ATTR_IPADDR_IPV6]),
        sizeof(struct in6_addr));
 return 0;
}
