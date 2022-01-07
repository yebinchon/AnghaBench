
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int skb_cow_head (struct sk_buff*,unsigned int) ;
 int skb_push (struct sk_buff*,unsigned int) ;

int batadv_skb_head_push(struct sk_buff *skb, unsigned int len)
{
 int result;
 result = skb_cow_head(skb, len);
 if (result < 0)
  return result;

 skb_push(skb, len);
 return 0;
}
