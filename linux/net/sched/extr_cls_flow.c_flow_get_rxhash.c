
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int skb_get_hash (struct sk_buff*) ;

__attribute__((used)) static u32 flow_get_rxhash(struct sk_buff *skb)
{
 return skb_get_hash(skb);
}
