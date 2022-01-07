
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int protocol; } ;
struct TYPE_3__ {int nexthdr; } ;


 TYPE_2__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int xfrm6_extract_header (struct sk_buff*) ;
 int xfrm6_tunnel_check_size (struct sk_buff*) ;

int xfrm6_extract_output(struct xfrm_state *x, struct sk_buff *skb)
{
 int err;

 err = xfrm6_tunnel_check_size(skb);
 if (err)
  return err;

 XFRM_MODE_SKB_CB(skb)->protocol = ipv6_hdr(skb)->nexthdr;

 return xfrm6_extract_header(skb);
}
