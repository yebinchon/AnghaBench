
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
typedef int __be32 ;


 size_t IPSET_ATTR_IPADDR_IPV4 ;
 int IPSET_ATTR_IPADDR_MAX ;
 int IPSET_ERR_PROTOCOL ;
 int flag_nested (struct nlattr*) ;
 int ip_set_attr_netorder (struct nlattr**,size_t) ;
 int ipaddr_policy ;
 int nla_get_be32 (struct nlattr*) ;
 scalar_t__ nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 scalar_t__ unlikely (int) ;

int
ip_set_get_ipaddr4(struct nlattr *nla, __be32 *ipaddr)
{
 struct nlattr *tb[IPSET_ATTR_IPADDR_MAX + 1];

 if (unlikely(!flag_nested(nla)))
  return -IPSET_ERR_PROTOCOL;
 if (nla_parse_nested(tb, IPSET_ATTR_IPADDR_MAX, nla,
        ipaddr_policy, ((void*)0)))
  return -IPSET_ERR_PROTOCOL;
 if (unlikely(!ip_set_attr_netorder(tb, IPSET_ATTR_IPADDR_IPV4)))
  return -IPSET_ERR_PROTOCOL;

 *ipaddr = nla_get_be32(tb[IPSET_ATTR_IPADDR_IPV4]);
 return 0;
}
