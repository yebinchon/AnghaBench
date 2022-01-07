
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int xfrm_input (struct sk_buff*,int,int ,int) ;

int xfrm_input_resume(struct sk_buff *skb, int nexthdr)
{
 return xfrm_input(skb, nexthdr, 0, -1);
}
