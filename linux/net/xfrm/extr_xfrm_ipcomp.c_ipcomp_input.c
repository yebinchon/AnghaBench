
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct sk_buff {scalar_t__ network_header; scalar_t__ transport_header; scalar_t__ data; int ip_summed; } ;
struct ip_comp_hdr {int nexthdr; } ;


 int CHECKSUM_NONE ;
 int ENOMEM ;
 int __skb_pull (struct sk_buff*,int) ;
 int ipcomp_decompress (struct xfrm_state*,struct sk_buff*) ;
 scalar_t__ skb_linearize_cow (struct sk_buff*) ;

int ipcomp_input(struct xfrm_state *x, struct sk_buff *skb)
{
 int nexthdr;
 int err = -ENOMEM;
 struct ip_comp_hdr *ipch;

 if (skb_linearize_cow(skb))
  goto out;

 skb->ip_summed = CHECKSUM_NONE;


 ipch = (void *)skb->data;
 nexthdr = ipch->nexthdr;

 skb->transport_header = skb->network_header + sizeof(*ipch);
 __skb_pull(skb, sizeof(*ipch));
 err = ipcomp_decompress(x, skb);
 if (err)
  goto out;

 err = nexthdr;

out:
 return err;
}
