
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;


 int GFP_ATOMIC ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_trim_rcsum (struct sk_buff*,unsigned int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *skb_checksum_maybe_trim(struct sk_buff *skb,
            unsigned int transport_len)
{
 struct sk_buff *skb_chk;
 unsigned int len = skb_transport_offset(skb) + transport_len;
 int ret;

 if (skb->len < len)
  return ((void*)0);
 else if (skb->len == len)
  return skb;

 skb_chk = skb_clone(skb, GFP_ATOMIC);
 if (!skb_chk)
  return ((void*)0);

 ret = pskb_trim_rcsum(skb_chk, len);
 if (ret) {
  kfree_skb(skb_chk);
  return ((void*)0);
 }

 return skb_chk;
}
