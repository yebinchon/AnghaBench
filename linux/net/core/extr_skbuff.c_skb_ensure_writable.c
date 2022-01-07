
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ skb_clone_writable (struct sk_buff*,int) ;
 int skb_cloned (struct sk_buff*) ;

int skb_ensure_writable(struct sk_buff *skb, int write_len)
{
 if (!pskb_may_pull(skb, write_len))
  return -ENOMEM;

 if (!skb_cloned(skb) || skb_clone_writable(skb, write_len))
  return 0;

 return pskb_expand_head(skb, 0, 0, GFP_ATOMIC);
}
