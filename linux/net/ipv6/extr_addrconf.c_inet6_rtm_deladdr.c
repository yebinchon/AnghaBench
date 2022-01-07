
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {int ifa_prefixlen; int ifa_index; int ifa_flags; } ;


 int EINVAL ;
 size_t IFA_ADDRESS ;
 size_t IFA_FLAGS ;
 int IFA_F_MANAGETEMPADDR ;
 size_t IFA_LOCAL ;
 int IFA_MAX ;
 struct in6_addr* extract_addr (struct nlattr*,struct nlattr*,struct in6_addr**) ;
 int ifa_ipv6_policy ;
 int inet6_addr_del (struct net*,int ,int ,struct in6_addr*,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int
inet6_rtm_deladdr(struct sk_buff *skb, struct nlmsghdr *nlh,
    struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct ifaddrmsg *ifm;
 struct nlattr *tb[IFA_MAX+1];
 struct in6_addr *pfx, *peer_pfx;
 u32 ifa_flags;
 int err;

 err = nlmsg_parse_deprecated(nlh, sizeof(*ifm), tb, IFA_MAX,
         ifa_ipv6_policy, extack);
 if (err < 0)
  return err;

 ifm = nlmsg_data(nlh);
 pfx = extract_addr(tb[IFA_ADDRESS], tb[IFA_LOCAL], &peer_pfx);
 if (!pfx)
  return -EINVAL;

 ifa_flags = tb[IFA_FLAGS] ? nla_get_u32(tb[IFA_FLAGS]) : ifm->ifa_flags;


 ifa_flags &= IFA_F_MANAGETEMPADDR;

 return inet6_addr_del(net, ifm->ifa_index, ifa_flags, pfx,
         ifm->ifa_prefixlen);
}
