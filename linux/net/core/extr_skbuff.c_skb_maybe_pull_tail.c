
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;


 int ENOMEM ;
 int EPROTO ;
 int * __pskb_pull_tail (struct sk_buff*,unsigned int) ;
 unsigned int skb_headlen (struct sk_buff*) ;

__attribute__((used)) static int skb_maybe_pull_tail(struct sk_buff *skb, unsigned int len,
          unsigned int max)
{
 if (skb_headlen(skb) >= len)
  return 0;




 if (max > skb->len)
  max = skb->len;

 if (__pskb_pull_tail(skb, max - skb_headlen(skb)) == ((void*)0))
  return -ENOMEM;

 if (skb_headlen(skb) < len)
  return -EPROTO;

 return 0;
}
