
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;


 int xfrm4_extract_header (struct sk_buff*) ;

int xfrm4_extract_input(struct xfrm_state *x, struct sk_buff *skb)
{
 return xfrm4_extract_header(skb);
}
