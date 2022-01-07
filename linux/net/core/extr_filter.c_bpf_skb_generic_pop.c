
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int __skb_pull (struct sk_buff*,scalar_t__) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 int skb_postpull_rcsum (struct sk_buff*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bpf_skb_generic_pop(struct sk_buff *skb, u32 off, u32 len)
{



 if (unlikely(!pskb_may_pull(skb, off + len)))
  return -ENOMEM;

 skb_postpull_rcsum(skb, skb->data + off, len);
 memmove(skb->data + len, skb->data, off);
 __skb_pull(skb, len);

 return 0;
}
