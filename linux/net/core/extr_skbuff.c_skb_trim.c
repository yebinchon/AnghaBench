
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;


 int __skb_trim (struct sk_buff*,unsigned int) ;

void skb_trim(struct sk_buff *skb, unsigned int len)
{
 if (skb->len > len)
  __skb_trim(skb, len);
}
