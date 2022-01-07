
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __kfree_skb (struct sk_buff*) ;
 int skb_unref (struct sk_buff*) ;
 int trace_consume_skb (struct sk_buff*) ;

void consume_skb(struct sk_buff *skb)
{
 if (!skb_unref(skb))
  return;

 trace_consume_skb(skb);
 __kfree_skb(skb);
}
