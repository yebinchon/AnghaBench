
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 void* skb_pull_inline (struct sk_buff*,unsigned int) ;

void *skb_pull(struct sk_buff *skb, unsigned int len)
{
 return skb_pull_inline(skb, len);
}
