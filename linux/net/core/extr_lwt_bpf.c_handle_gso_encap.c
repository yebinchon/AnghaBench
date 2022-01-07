
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udphdr {int check; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct gre_base_hdr {int flags; } ;
typedef int __u8 ;
struct TYPE_6__ {int protocol; } ;
struct TYPE_5__ {int nexthdr; } ;
struct TYPE_4__ {int gso_type; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int EPROTONOSUPPORT ;
 int GRE_CSUM ;




 int SKB_GSO_GRE ;
 int SKB_GSO_GRE_CSUM ;
 int SKB_GSO_IPXIP4 ;
 int SKB_GSO_IPXIP6 ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 int SKB_GSO_UDP_TUNNEL ;
 int SKB_GSO_UDP_TUNNEL_CSUM ;
 int handle_gso_type (struct sk_buff*,int ,int) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 void* skb_network_header (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int handle_gso_encap(struct sk_buff *skb, bool ipv4, int encap_len)
{
 int next_hdr_offset;
 void *next_hdr;
 __u8 protocol;





 if (!(skb_shinfo(skb)->gso_type & (SKB_GSO_TCPV4 | SKB_GSO_TCPV6)))
  return -ENOTSUPP;

 if (ipv4) {
  protocol = ip_hdr(skb)->protocol;
  next_hdr_offset = sizeof(struct iphdr);
  next_hdr = skb_network_header(skb) + next_hdr_offset;
 } else {
  protocol = ipv6_hdr(skb)->nexthdr;
  next_hdr_offset = sizeof(struct ipv6hdr);
  next_hdr = skb_network_header(skb) + next_hdr_offset;
 }

 switch (protocol) {
 case 131:
  next_hdr_offset += sizeof(struct gre_base_hdr);
  if (next_hdr_offset > encap_len)
   return -EINVAL;

  if (((struct gre_base_hdr *)next_hdr)->flags & GRE_CSUM)
   return handle_gso_type(skb, SKB_GSO_GRE_CSUM,
            encap_len);
  return handle_gso_type(skb, SKB_GSO_GRE, encap_len);

 case 128:
  next_hdr_offset += sizeof(struct udphdr);
  if (next_hdr_offset > encap_len)
   return -EINVAL;

  if (((struct udphdr *)next_hdr)->check)
   return handle_gso_type(skb, SKB_GSO_UDP_TUNNEL_CSUM,
            encap_len);
  return handle_gso_type(skb, SKB_GSO_UDP_TUNNEL, encap_len);

 case 130:
 case 129:
  if (ipv4)
   return handle_gso_type(skb, SKB_GSO_IPXIP4, encap_len);
  else
   return handle_gso_type(skb, SKB_GSO_IPXIP6, encap_len);

 default:
  return -EPROTONOSUPPORT;
 }
}
