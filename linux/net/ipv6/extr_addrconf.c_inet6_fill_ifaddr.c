
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct inet6_ifaddr {int flags; scalar_t__ prefered_lft; scalar_t__ valid_lft; long tstamp; int rt_priority; int cstamp; int addr; int peer_addr; TYPE_2__* idev; int scope; int prefix_len; } ;
struct inet6_fill_args {scalar_t__ netnsid; int flags; int event; int seq; int portid; } ;
struct ifaddrmsg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int ifindex; } ;


 int EMSGSIZE ;
 long HZ ;
 int IFA_ADDRESS ;
 int IFA_FLAGS ;
 int IFA_F_PERMANENT ;
 int IFA_LOCAL ;
 int IFA_RT_PRIORITY ;
 int IFA_TARGET_NETNSID ;
 scalar_t__ INFINITY_LIFE_TIME ;
 int ipv6_addr_any (int *) ;
 long jiffies ;
 scalar_t__ nla_put_in6_addr (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 scalar_t__ put_cacheinfo (struct sk_buff*,int ,long,scalar_t__,scalar_t__) ;
 int put_ifaddrmsg (struct nlmsghdr*,int ,int,int ,int ) ;
 int rt_scope (int ) ;

__attribute__((used)) static int inet6_fill_ifaddr(struct sk_buff *skb, struct inet6_ifaddr *ifa,
        struct inet6_fill_args *args)
{
 struct nlmsghdr *nlh;
 u32 preferred, valid;

 nlh = nlmsg_put(skb, args->portid, args->seq, args->event,
   sizeof(struct ifaddrmsg), args->flags);
 if (!nlh)
  return -EMSGSIZE;

 put_ifaddrmsg(nlh, ifa->prefix_len, ifa->flags, rt_scope(ifa->scope),
        ifa->idev->dev->ifindex);

 if (args->netnsid >= 0 &&
     nla_put_s32(skb, IFA_TARGET_NETNSID, args->netnsid))
  goto error;

 if (!((ifa->flags&IFA_F_PERMANENT) &&
       (ifa->prefered_lft == INFINITY_LIFE_TIME))) {
  preferred = ifa->prefered_lft;
  valid = ifa->valid_lft;
  if (preferred != INFINITY_LIFE_TIME) {
   long tval = (jiffies - ifa->tstamp)/HZ;
   if (preferred > tval)
    preferred -= tval;
   else
    preferred = 0;
   if (valid != INFINITY_LIFE_TIME) {
    if (valid > tval)
     valid -= tval;
    else
     valid = 0;
   }
  }
 } else {
  preferred = INFINITY_LIFE_TIME;
  valid = INFINITY_LIFE_TIME;
 }

 if (!ipv6_addr_any(&ifa->peer_addr)) {
  if (nla_put_in6_addr(skb, IFA_LOCAL, &ifa->addr) < 0 ||
      nla_put_in6_addr(skb, IFA_ADDRESS, &ifa->peer_addr) < 0)
   goto error;
 } else
  if (nla_put_in6_addr(skb, IFA_ADDRESS, &ifa->addr) < 0)
   goto error;

 if (ifa->rt_priority &&
     nla_put_u32(skb, IFA_RT_PRIORITY, ifa->rt_priority))
  goto error;

 if (put_cacheinfo(skb, ifa->cstamp, ifa->tstamp, preferred, valid) < 0)
  goto error;

 if (nla_put_u32(skb, IFA_FLAGS, ifa->flags) < 0)
  goto error;

 nlmsg_end(skb, nlh);
 return 0;

error:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
