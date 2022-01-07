
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 int kfree_skb (struct sk_buff*) ;
 scalar_t__ pskb_carve (struct sk_buff*,int,int ) ;
 scalar_t__ pskb_trim (struct sk_buff*,int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

struct sk_buff *pskb_extract(struct sk_buff *skb, int off,
        int to_copy, gfp_t gfp)
{
 struct sk_buff *clone = skb_clone(skb, gfp);

 if (!clone)
  return ((void*)0);

 if (pskb_carve(clone, off, gfp) < 0 ||
     pskb_trim(clone, to_copy)) {
  kfree_skb(clone);
  return ((void*)0);
 }
 return clone;
}
