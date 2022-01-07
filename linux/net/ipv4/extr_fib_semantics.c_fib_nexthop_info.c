
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtvia {int rtvia_family; int rtvia_addr; } ;
struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int ipv6; int ipv4; } ;
struct fib_nh_common {int nhc_flags; int nhc_family; int nhc_gw_family; scalar_t__ nhc_lwtstate; TYPE_2__* nhc_dev; TYPE_1__ nhc_gw; } ;
struct TYPE_5__ {int ifindex; } ;




 int EMSGSIZE ;
 int RTA_ENCAP ;
 int RTA_ENCAP_TYPE ;
 int RTA_GATEWAY ;
 int RTA_OIF ;
 int RTA_VIA ;
 int RTNH_F_DEAD ;
 int RTNH_F_LINKDOWN ;
 int RTNH_F_OFFLOAD ;
 unsigned char RTNH_F_ONLINK ;
 int ip6_ignore_linkdown (TYPE_2__*) ;
 int ip_ignore_linkdown (TYPE_2__*) ;
 scalar_t__ lwtunnel_fill_encap (struct sk_buff*,scalar_t__,int ,int ) ;
 int memcpy (int ,int *,int) ;
 struct rtvia* nla_data (struct nlattr*) ;
 int nla_put_in6_addr (struct sk_buff*,int ,int *) ;
 int nla_put_in_addr (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int fib_nexthop_info(struct sk_buff *skb, const struct fib_nh_common *nhc,
       u8 rt_family, unsigned char *flags, bool skip_oif)
{
 if (nhc->nhc_flags & RTNH_F_DEAD)
  *flags |= RTNH_F_DEAD;

 if (nhc->nhc_flags & RTNH_F_LINKDOWN) {
  *flags |= RTNH_F_LINKDOWN;

  rcu_read_lock();
  switch (nhc->nhc_family) {
  case 129:
   if (ip_ignore_linkdown(nhc->nhc_dev))
    *flags |= RTNH_F_DEAD;
   break;
  case 128:
   if (ip6_ignore_linkdown(nhc->nhc_dev))
    *flags |= RTNH_F_DEAD;
   break;
  }
  rcu_read_unlock();
 }

 switch (nhc->nhc_gw_family) {
 case 129:
  if (nla_put_in_addr(skb, RTA_GATEWAY, nhc->nhc_gw.ipv4))
   goto nla_put_failure;
  break;
 case 128:



  if (rt_family != nhc->nhc_gw_family) {
   int alen = sizeof(struct in6_addr);
   struct nlattr *nla;
   struct rtvia *via;

   nla = nla_reserve(skb, RTA_VIA, alen + 2);
   if (!nla)
    goto nla_put_failure;

   via = nla_data(nla);
   via->rtvia_family = 128;
   memcpy(via->rtvia_addr, &nhc->nhc_gw.ipv6, alen);
  } else if (nla_put_in6_addr(skb, RTA_GATEWAY,
         &nhc->nhc_gw.ipv6) < 0) {
   goto nla_put_failure;
  }
  break;
 }

 *flags |= (nhc->nhc_flags & RTNH_F_ONLINK);
 if (nhc->nhc_flags & RTNH_F_OFFLOAD)
  *flags |= RTNH_F_OFFLOAD;

 if (!skip_oif && nhc->nhc_dev &&
     nla_put_u32(skb, RTA_OIF, nhc->nhc_dev->ifindex))
  goto nla_put_failure;

 if (nhc->nhc_lwtstate &&
     lwtunnel_fill_encap(skb, nhc->nhc_lwtstate,
    RTA_ENCAP, RTA_ENCAP_TYPE) < 0)
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
