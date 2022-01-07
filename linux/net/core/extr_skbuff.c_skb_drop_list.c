
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int kfree_skb_list (struct sk_buff*) ;

__attribute__((used)) static void skb_drop_list(struct sk_buff **listp)
{
 kfree_skb_list(*listp);
 *listp = ((void*)0);
}
