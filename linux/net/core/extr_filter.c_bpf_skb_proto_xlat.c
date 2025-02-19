
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; } ;
typedef scalar_t__ __be16 ;


 int ENOTSUPP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int bpf_skb_proto_4_to_6 (struct sk_buff*) ;
 int bpf_skb_proto_6_to_4 (struct sk_buff*) ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static int bpf_skb_proto_xlat(struct sk_buff *skb, __be16 to_proto)
{
 __be16 from_proto = skb->protocol;

 if (from_proto == htons(ETH_P_IP) &&
       to_proto == htons(ETH_P_IPV6))
  return bpf_skb_proto_4_to_6(skb);

 if (from_proto == htons(ETH_P_IPV6) &&
       to_proto == htons(ETH_P_IP))
  return bpf_skb_proto_6_to_4(skb);

 return -ENOTSUPP;
}
