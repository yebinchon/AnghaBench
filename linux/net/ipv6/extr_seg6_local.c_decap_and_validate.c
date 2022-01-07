
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ encapsulation; } ;
struct ipv6_sr_hdr {scalar_t__ segments_left; } ;


 struct ipv6_sr_hdr* get_srh (struct sk_buff*) ;
 scalar_t__ ipv6_find_hdr (struct sk_buff*,unsigned int*,int,int *,int *) ;
 int pskb_pull (struct sk_buff*,unsigned int) ;
 int seg6_hmac_validate_skb (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_postpull_rcsum (struct sk_buff*,int ,unsigned int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static bool decap_and_validate(struct sk_buff *skb, int proto)
{
 struct ipv6_sr_hdr *srh;
 unsigned int off = 0;

 srh = get_srh(skb);
 if (srh && srh->segments_left > 0)
  return 0;






 if (ipv6_find_hdr(skb, &off, proto, ((void*)0), ((void*)0)) < 0)
  return 0;

 if (!pskb_pull(skb, off))
  return 0;

 skb_postpull_rcsum(skb, skb_network_header(skb), off);

 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);
 skb->encapsulation = 0;

 return 1;
}
