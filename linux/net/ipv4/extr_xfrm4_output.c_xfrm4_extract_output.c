
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int protocol; } ;
struct TYPE_3__ {int protocol; } ;


 TYPE_2__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int xfrm4_extract_header (struct sk_buff*) ;
 int xfrm4_tunnel_check_size (struct sk_buff*) ;

int xfrm4_extract_output(struct xfrm_state *x, struct sk_buff *skb)
{
 int err;

 err = xfrm4_tunnel_check_size(skb);
 if (err)
  return err;

 XFRM_MODE_SKB_CB(skb)->protocol = ip_hdr(skb)->protocol;

 return xfrm4_extract_header(skb);
}
