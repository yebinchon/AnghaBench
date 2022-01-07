
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct dev_kfree_skb_cb {int dummy; } ;



__attribute__((used)) static struct dev_kfree_skb_cb *get_kfree_skb_cb(const struct sk_buff *skb)
{
 return (struct dev_kfree_skb_cb *)skb->cb;
}
