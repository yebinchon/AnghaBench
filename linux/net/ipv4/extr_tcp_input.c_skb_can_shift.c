
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int skb_headlen (struct sk_buff const*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff const*) ;

__attribute__((used)) static int skb_can_shift(const struct sk_buff *skb)
{
 return !skb_headlen(skb) && skb_is_nonlinear(skb);
}
