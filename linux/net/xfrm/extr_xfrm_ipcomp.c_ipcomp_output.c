
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int spi; } ;
struct xfrm_state {TYPE_1__ id; struct ipcomp_data* data; } ;
struct sk_buff {scalar_t__ len; } ;
struct ipcomp_data {scalar_t__ threshold; } ;
struct ip_comp_hdr {int cpi; scalar_t__ flags; int nexthdr; } ;


 int IPPROTO_COMP ;
 int htons (int ) ;
 struct ip_comp_hdr* ip_comp_hdr (struct sk_buff*) ;
 int ipcomp_compress (struct xfrm_state*,struct sk_buff*) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ skb_linearize_cow (struct sk_buff*) ;
 int * skb_mac_header (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;

int ipcomp_output(struct xfrm_state *x, struct sk_buff *skb)
{
 int err;
 struct ip_comp_hdr *ipch;
 struct ipcomp_data *ipcd = x->data;

 if (skb->len < ipcd->threshold) {

  goto out_ok;
 }

 if (skb_linearize_cow(skb))
  goto out_ok;

 err = ipcomp_compress(x, skb);

 if (err) {
  goto out_ok;
 }


 ipch = ip_comp_hdr(skb);
 ipch->nexthdr = *skb_mac_header(skb);
 ipch->flags = 0;
 ipch->cpi = htons((u16 )ntohl(x->id.spi));
 *skb_mac_header(skb) = IPPROTO_COMP;
out_ok:
 skb_push(skb, -skb_network_offset(skb));
 return 0;
}
