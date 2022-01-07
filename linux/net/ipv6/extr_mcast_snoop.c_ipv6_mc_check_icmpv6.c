
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct icmp6hdr {int dummy; } ;


 int EINVAL ;
 int ipv6_mc_may_pull (struct sk_buff*,unsigned int) ;
 int ipv6_mc_validate_checksum ;
 unsigned int ipv6_transport_len (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_checksum_trimmed (struct sk_buff*,unsigned int,int ) ;
 int skb_transport_offset (struct sk_buff*) ;

int ipv6_mc_check_icmpv6(struct sk_buff *skb)
{
 unsigned int len = skb_transport_offset(skb) + sizeof(struct icmp6hdr);
 unsigned int transport_len = ipv6_transport_len(skb);
 struct sk_buff *skb_chk;

 if (!ipv6_mc_may_pull(skb, len))
  return -EINVAL;

 skb_chk = skb_checksum_trimmed(skb, transport_len,
           ipv6_mc_validate_checksum);
 if (!skb_chk)
  return -EINVAL;

 if (skb_chk != skb)
  kfree_skb(skb_chk);

 return 0;
}
