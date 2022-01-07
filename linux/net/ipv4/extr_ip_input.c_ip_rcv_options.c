
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int ihl; int daddr; int saddr; } ;
struct ip_options {int optlen; int srr; } ;
struct in_device {int dummy; } ;
struct TYPE_2__ {struct ip_options opt; } ;


 scalar_t__ IN_DEV_LOG_MARTIANS (struct in_device*) ;
 int IN_DEV_SOURCE_ROUTE (struct in_device*) ;
 TYPE_1__* IPCB (struct sk_buff*) ;
 int IPSTATS_MIB_INDISCARDS ;
 int IPSTATS_MIB_INHDRERRORS ;
 int __IP_INC_STATS (int ,int ) ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 int dev_net (struct net_device*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_options_compile (int ,struct ip_options*,struct sk_buff*) ;
 scalar_t__ ip_options_rcv_srr (struct sk_buff*,struct net_device*) ;
 int net_info_ratelimited (char*,int *,int *) ;
 scalar_t__ skb_cow (struct sk_buff*,int ) ;
 int skb_headroom (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline bool ip_rcv_options(struct sk_buff *skb, struct net_device *dev)
{
 struct ip_options *opt;
 const struct iphdr *iph;
 if (skb_cow(skb, skb_headroom(skb))) {
  __IP_INC_STATS(dev_net(dev), IPSTATS_MIB_INDISCARDS);
  goto drop;
 }

 iph = ip_hdr(skb);
 opt = &(IPCB(skb)->opt);
 opt->optlen = iph->ihl*4 - sizeof(struct iphdr);

 if (ip_options_compile(dev_net(dev), opt, skb)) {
  __IP_INC_STATS(dev_net(dev), IPSTATS_MIB_INHDRERRORS);
  goto drop;
 }

 if (unlikely(opt->srr)) {
  struct in_device *in_dev = __in_dev_get_rcu(dev);

  if (in_dev) {
   if (!IN_DEV_SOURCE_ROUTE(in_dev)) {
    if (IN_DEV_LOG_MARTIANS(in_dev))
     net_info_ratelimited("source route option %pI4 -> %pI4\n",
            &iph->saddr,
            &iph->daddr);
    goto drop;
   }
  }

  if (ip_options_rcv_srr(skb, dev))
   goto drop;
 }

 return 0;
drop:
 return 1;
}
