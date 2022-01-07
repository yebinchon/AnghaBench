
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int _kfree_skb_defer (struct sk_buff*) ;

void __kfree_skb_defer(struct sk_buff *skb)
{
 _kfree_skb_defer(skb);
}
