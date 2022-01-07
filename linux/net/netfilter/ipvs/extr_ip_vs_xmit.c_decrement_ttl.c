
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct netns_ipvs {struct net* net; } ;
struct net {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct dst_entry {int dev; } ;
struct TYPE_5__ {int ttl; } ;
struct TYPE_4__ {int hop_limit; } ;


 int AF_INET6 ;
 int ICMPV6_EXC_HOPLIMIT ;
 int ICMPV6_TIME_EXCEED ;
 int ICMP_EXC_TTL ;
 int ICMP_TIME_EXCEEDED ;
 int IPSTATS_MIB_INHDRERRORS ;
 int __IP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int __IP_INC_STATS (struct net*,int ) ;
 struct inet6_dev* __in6_dev_get_safely (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 int icmpv6_send (struct sk_buff*,int ,int ,int ) ;
 int ip_decrease_ttl (TYPE_2__*) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,int) ;

__attribute__((used)) static inline bool decrement_ttl(struct netns_ipvs *ipvs,
     int skb_af,
     struct sk_buff *skb)
{
 struct net *net = ipvs->net;
 {
  if (ip_hdr(skb)->ttl <= 1) {

   __IP_INC_STATS(net, IPSTATS_MIB_INHDRERRORS);
   icmp_send(skb, ICMP_TIME_EXCEEDED, ICMP_EXC_TTL, 0);
   return 0;
  }


  if (skb_ensure_writable(skb, sizeof(struct iphdr)))
   return 0;


  ip_decrease_ttl(ip_hdr(skb));
 }

 return 1;
}
