
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {int ifindex; } ;
struct inet6_fill_args {scalar_t__ netnsid; int flags; int event; int seq; int portid; } ;
struct ifaddrmsg {int dummy; } ;
struct ifacaddr6 {int aca_tstamp; int aca_cstamp; int aca_addr; int aca_rt; } ;


 int EMSGSIZE ;
 int IFA_ANYCAST ;
 int IFA_F_PERMANENT ;
 int IFA_SITE ;
 int IFA_TARGET_NETNSID ;
 int INFINITY_LIFE_TIME ;
 int RT_SCOPE_SITE ;
 int RT_SCOPE_UNIVERSE ;
 struct net_device* fib6_info_nh_dev (int ) ;
 int ipv6_addr_scope (int *) ;
 scalar_t__ nla_put_in6_addr (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int ,scalar_t__) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 scalar_t__ put_cacheinfo (struct sk_buff*,int ,int ,int ,int ) ;
 int put_ifaddrmsg (struct nlmsghdr*,int,int ,int ,int) ;

__attribute__((used)) static int inet6_fill_ifacaddr(struct sk_buff *skb, struct ifacaddr6 *ifaca,
          struct inet6_fill_args *args)
{
 struct net_device *dev = fib6_info_nh_dev(ifaca->aca_rt);
 int ifindex = dev ? dev->ifindex : 1;
 struct nlmsghdr *nlh;
 u8 scope = RT_SCOPE_UNIVERSE;

 if (ipv6_addr_scope(&ifaca->aca_addr) & IFA_SITE)
  scope = RT_SCOPE_SITE;

 nlh = nlmsg_put(skb, args->portid, args->seq, args->event,
   sizeof(struct ifaddrmsg), args->flags);
 if (!nlh)
  return -EMSGSIZE;

 if (args->netnsid >= 0 &&
     nla_put_s32(skb, IFA_TARGET_NETNSID, args->netnsid))
  return -EMSGSIZE;

 put_ifaddrmsg(nlh, 128, IFA_F_PERMANENT, scope, ifindex);
 if (nla_put_in6_addr(skb, IFA_ANYCAST, &ifaca->aca_addr) < 0 ||
     put_cacheinfo(skb, ifaca->aca_cstamp, ifaca->aca_tstamp,
     INFINITY_LIFE_TIME, INFINITY_LIFE_TIME) < 0) {
  nlmsg_cancel(skb, nlh);
  return -EMSGSIZE;
 }

 nlmsg_end(skb, nlh);
 return 0;
}
