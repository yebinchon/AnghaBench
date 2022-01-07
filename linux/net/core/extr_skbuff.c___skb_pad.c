
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data_len; int end; int tail; scalar_t__ len; scalar_t__ data; } ;


 int GFP_ATOMIC ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int memset (scalar_t__,int ,int) ;
 int pskb_expand_head (struct sk_buff*,int ,int,int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 int skb_linearize (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int __skb_pad(struct sk_buff *skb, int pad, bool free_on_error)
{
 int err;
 int ntail;


 if (!skb_cloned(skb) && skb_tailroom(skb) >= pad) {
  memset(skb->data+skb->len, 0, pad);
  return 0;
 }

 ntail = skb->data_len + pad - (skb->end - skb->tail);
 if (likely(skb_cloned(skb) || ntail > 0)) {
  err = pskb_expand_head(skb, 0, ntail, GFP_ATOMIC);
  if (unlikely(err))
   goto free_skb;
 }




 err = skb_linearize(skb);
 if (unlikely(err))
  goto free_skb;

 memset(skb->data + skb->len, 0, pad);
 return 0;

free_skb:
 if (free_on_error)
  kfree_skb(skb);
 return err;
}
