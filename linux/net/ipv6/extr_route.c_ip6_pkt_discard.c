
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ICMPV6_NOROUTE ;
 int IPSTATS_MIB_INNOROUTES ;
 int ip6_pkt_drop (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ip6_pkt_discard(struct sk_buff *skb)
{
 return ip6_pkt_drop(skb, ICMPV6_NOROUTE, IPSTATS_MIB_INNOROUTES);
}
