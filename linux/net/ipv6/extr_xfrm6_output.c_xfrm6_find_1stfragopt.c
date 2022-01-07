
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;


 int ip6_find_1stfragopt (struct sk_buff*,int **) ;

int xfrm6_find_1stfragopt(struct xfrm_state *x, struct sk_buff *skb,
     u8 **prevhdr)
{
 return ip6_find_1stfragopt(skb, prevhdr);
}
