
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;

__attribute__((used)) static int skb_prepare_for_shift(struct sk_buff *skb)
{
 return skb_cloned(skb) && pskb_expand_head(skb, 0, 0, GFP_ATOMIC);
}
