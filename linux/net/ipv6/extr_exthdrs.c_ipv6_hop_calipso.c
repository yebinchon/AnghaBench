
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int calipso_validate (struct sk_buff*,unsigned char const*) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned char* skb_network_header (struct sk_buff*) ;

__attribute__((used)) static bool ipv6_hop_calipso(struct sk_buff *skb, int optoff)
{
 const unsigned char *nh = skb_network_header(skb);

 if (nh[optoff + 1] < 8)
  goto drop;

 if (nh[optoff + 6] * 4 + 8 > nh[optoff + 1])
  goto drop;

 if (!calipso_validate(skb, nh + optoff))
  goto drop;

 return 1;

drop:
 kfree_skb(skb);
 return 0;
}
