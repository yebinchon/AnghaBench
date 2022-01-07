
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrlblmsg {scalar_t__ ifal_family; int ifal_prefixlen; int ifal_index; } ;


 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int EOPNOTSUPP ;
 size_t IFAL_ADDRESS ;
 size_t IFAL_LABEL ;
 int IFAL_MAX ;
 scalar_t__ IPV6_ADDR_LABEL_DEFAULT ;
 int NLM_F_REPLACE ;


 int addrlbl_ifindex_exists (struct net*,int ) ;
 int ifal_policy ;
 int ip6addrlbl_add (struct net*,struct in6_addr*,int,int ,scalar_t__,int) ;
 int ip6addrlbl_del (struct net*,struct in6_addr*,int,int ) ;
 struct in6_addr* nla_data (struct nlattr*) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 struct ifaddrlblmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int ip6addrlbl_newdel(struct sk_buff *skb, struct nlmsghdr *nlh,
        struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct ifaddrlblmsg *ifal;
 struct nlattr *tb[IFAL_MAX+1];
 struct in6_addr *pfx;
 u32 label;
 int err = 0;

 err = nlmsg_parse_deprecated(nlh, sizeof(*ifal), tb, IFAL_MAX,
         ifal_policy, extack);
 if (err < 0)
  return err;

 ifal = nlmsg_data(nlh);

 if (ifal->ifal_family != AF_INET6 ||
     ifal->ifal_prefixlen > 128)
  return -EINVAL;

 if (!tb[IFAL_ADDRESS])
  return -EINVAL;
 pfx = nla_data(tb[IFAL_ADDRESS]);

 if (!tb[IFAL_LABEL])
  return -EINVAL;
 label = nla_get_u32(tb[IFAL_LABEL]);
 if (label == IPV6_ADDR_LABEL_DEFAULT)
  return -EINVAL;

 switch (nlh->nlmsg_type) {
 case 128:
  if (ifal->ifal_index &&
      !addrlbl_ifindex_exists(net, ifal->ifal_index))
   return -EINVAL;

  err = ip6addrlbl_add(net, pfx, ifal->ifal_prefixlen,
         ifal->ifal_index, label,
         nlh->nlmsg_flags & NLM_F_REPLACE);
  break;
 case 129:
  err = ip6addrlbl_del(net, pfx, ifal->ifal_prefixlen,
         ifal->ifal_index);
  break;
 default:
  err = -EOPNOTSUPP;
 }
 return err;
}
