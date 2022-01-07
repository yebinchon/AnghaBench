
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ fclone; } ;


 scalar_t__ SKB_FCLONE_UNAVAILABLE ;
 int __kfree_skb (struct sk_buff*) ;
 int _kfree_skb_defer (struct sk_buff*) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int skb_unref (struct sk_buff*) ;
 int trace_consume_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void napi_consume_skb(struct sk_buff *skb, int budget)
{
 if (unlikely(!skb))
  return;


 if (unlikely(!budget)) {
  dev_consume_skb_any(skb);
  return;
 }

 if (!skb_unref(skb))
  return;


 trace_consume_skb(skb);


 if (skb->fclone != SKB_FCLONE_UNAVAILABLE) {
  __kfree_skb(skb);
  return;
 }

 _kfree_skb_defer(skb);
}
