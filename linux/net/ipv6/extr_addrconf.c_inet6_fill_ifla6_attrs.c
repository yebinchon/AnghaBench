
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int s6_addr; } ;
struct TYPE_5__ {int addr_gen_mode; } ;
struct inet6_dev {int lock; TYPE_1__ token; TYPE_2__ cnf; TYPE_3__* nd_parms; int tstamp; int if_flags; } ;
struct in6_addr {int dummy; } ;
struct ifla_cacheinfo {void* retrans_time; void* reachable_time; int tstamp; int max_reasm_len; } ;
typedef int s32 ;
typedef int ci ;
struct TYPE_6__ {int reachable_time; } ;


 int DEVCONF_MAX ;
 int EMSGSIZE ;
 int ICMP6_MIB_MAX ;
 int IFLA_INET6_ADDR_GEN_MODE ;
 int IFLA_INET6_CACHEINFO ;
 int IFLA_INET6_CONF ;
 int IFLA_INET6_FLAGS ;
 int IFLA_INET6_ICMP6STATS ;
 int IFLA_INET6_STATS ;
 int IFLA_INET6_TOKEN ;
 int IPSTATS_MIB_MAX ;
 int IPV6_MAXPLEN ;
 int NEIGH_VAR (TYPE_3__*,int ) ;
 int RETRANS_TIME ;
 int RTEXT_FILTER_SKIP_STATS ;
 int cstamp_delta (int ) ;
 int ipv6_store_devconf (TYPE_2__*,int ,int ) ;
 void* jiffies_to_msecs (int ) ;
 int memcpy (int ,int ,int ) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct ifla_cacheinfo*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int snmp6_fill_stats (int ,struct inet6_dev*,int ,int ) ;

__attribute__((used)) static int inet6_fill_ifla6_attrs(struct sk_buff *skb, struct inet6_dev *idev,
      u32 ext_filter_mask)
{
 struct nlattr *nla;
 struct ifla_cacheinfo ci;

 if (nla_put_u32(skb, IFLA_INET6_FLAGS, idev->if_flags))
  goto nla_put_failure;
 ci.max_reasm_len = IPV6_MAXPLEN;
 ci.tstamp = cstamp_delta(idev->tstamp);
 ci.reachable_time = jiffies_to_msecs(idev->nd_parms->reachable_time);
 ci.retrans_time = jiffies_to_msecs(NEIGH_VAR(idev->nd_parms, RETRANS_TIME));
 if (nla_put(skb, IFLA_INET6_CACHEINFO, sizeof(ci), &ci))
  goto nla_put_failure;
 nla = nla_reserve(skb, IFLA_INET6_CONF, DEVCONF_MAX * sizeof(s32));
 if (!nla)
  goto nla_put_failure;
 ipv6_store_devconf(&idev->cnf, nla_data(nla), nla_len(nla));



 if (ext_filter_mask & RTEXT_FILTER_SKIP_STATS)
  return 0;

 nla = nla_reserve(skb, IFLA_INET6_STATS, IPSTATS_MIB_MAX * sizeof(u64));
 if (!nla)
  goto nla_put_failure;
 snmp6_fill_stats(nla_data(nla), idev, IFLA_INET6_STATS, nla_len(nla));

 nla = nla_reserve(skb, IFLA_INET6_ICMP6STATS, ICMP6_MIB_MAX * sizeof(u64));
 if (!nla)
  goto nla_put_failure;
 snmp6_fill_stats(nla_data(nla), idev, IFLA_INET6_ICMP6STATS, nla_len(nla));

 nla = nla_reserve(skb, IFLA_INET6_TOKEN, sizeof(struct in6_addr));
 if (!nla)
  goto nla_put_failure;

 if (nla_put_u8(skb, IFLA_INET6_ADDR_GEN_MODE, idev->cnf.addr_gen_mode))
  goto nla_put_failure;

 read_lock_bh(&idev->lock);
 memcpy(nla_data(nla), idev->token.s6_addr, nla_len(nla));
 read_unlock_bh(&idev->lock);

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
