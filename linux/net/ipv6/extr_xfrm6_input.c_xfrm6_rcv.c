
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int xfrm6_rcv_tnl (struct sk_buff*,int *) ;

int xfrm6_rcv(struct sk_buff *skb)
{
 return xfrm6_rcv_tnl(skb, ((void*)0));
}
