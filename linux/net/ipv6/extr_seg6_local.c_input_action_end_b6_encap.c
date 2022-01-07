
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int encapsulation; scalar_t__ len; } ;
struct seg6_local_lwt {int srh; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct TYPE_2__ {int payload_len; int daddr; } ;


 int EINVAL ;
 int IPPROTO_IPV6 ;
 int advance_nextseg (struct ipv6_sr_hdr*,int *) ;
 int dst_input (struct sk_buff*) ;
 struct ipv6_sr_hdr* get_and_validate_srh (struct sk_buff*) ;
 int htons (scalar_t__) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int seg6_do_srh_encap (struct sk_buff*,int ,int ) ;
 int seg6_lookup_nexthop (struct sk_buff*,int *,int ) ;
 int skb_reset_inner_headers (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,int) ;

__attribute__((used)) static int input_action_end_b6_encap(struct sk_buff *skb,
         struct seg6_local_lwt *slwt)
{
 struct ipv6_sr_hdr *srh;
 int err = -EINVAL;

 srh = get_and_validate_srh(skb);
 if (!srh)
  goto drop;

 advance_nextseg(srh, &ipv6_hdr(skb)->daddr);

 skb_reset_inner_headers(skb);
 skb->encapsulation = 1;

 err = seg6_do_srh_encap(skb, slwt->srh, IPPROTO_IPV6);
 if (err)
  goto drop;

 ipv6_hdr(skb)->payload_len = htons(skb->len - sizeof(struct ipv6hdr));
 skb_set_transport_header(skb, sizeof(struct ipv6hdr));

 seg6_lookup_nexthop(skb, ((void*)0), 0);

 return dst_input(skb);

drop:
 kfree_skb(skb);
 return err;
}
