
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int __sum16 ;


 int skb_checksum_simple_validate (struct sk_buff*) ;

__attribute__((used)) static inline __sum16 ip_mc_validate_checksum(struct sk_buff *skb)
{
 return skb_checksum_simple_validate(skb);
}
