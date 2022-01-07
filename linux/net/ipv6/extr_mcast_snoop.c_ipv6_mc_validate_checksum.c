
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int __sum16 ;


 int IPPROTO_ICMPV6 ;
 int ip6_compute_pseudo ;
 int skb_checksum_validate (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline __sum16 ipv6_mc_validate_checksum(struct sk_buff *skb)
{
 return skb_checksum_validate(skb, IPPROTO_ICMPV6, ip6_compute_pseudo);
}
