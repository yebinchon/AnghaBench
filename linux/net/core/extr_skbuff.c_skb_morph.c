
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 struct sk_buff* __skb_clone (struct sk_buff*,struct sk_buff*) ;
 int skb_release_all (struct sk_buff*) ;

struct sk_buff *skb_morph(struct sk_buff *dst, struct sk_buff *src)
{
 skb_release_all(dst);
 return __skb_clone(dst, src);
}
