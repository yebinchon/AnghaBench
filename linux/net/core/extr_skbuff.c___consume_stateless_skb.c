
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int kfree_skbmem (struct sk_buff*) ;
 int skb_release_data (struct sk_buff*) ;
 int trace_consume_skb (struct sk_buff*) ;

void __consume_stateless_skb(struct sk_buff *skb)
{
 trace_consume_skb(skb);
 skb_release_data(skb);
 kfree_skbmem(skb);
}
