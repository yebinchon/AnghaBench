
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_opt_hdr {int nexthdr; } ;
struct TYPE_2__ {int nexthdr; } ;


 int IPV6_TLV_HAO ;



 int ipv6_find_tlv (struct sk_buff*,int,int ) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ ipv6_optlen (struct ipv6_opt_hdr*) ;
 int net_dbg_ratelimited (char*) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int mip6_destopt_offset(struct xfrm_state *x, struct sk_buff *skb,
          u8 **nexthdr)
{
 u16 offset = sizeof(struct ipv6hdr);
 struct ipv6_opt_hdr *exthdr =
       (struct ipv6_opt_hdr *)(ipv6_hdr(skb) + 1);
 const unsigned char *nh = skb_network_header(skb);
 unsigned int packet_len = skb_tail_pointer(skb) -
  skb_network_header(skb);
 int found_rhdr = 0;

 *nexthdr = &ipv6_hdr(skb)->nexthdr;

 while (offset + 1 <= packet_len) {

  switch (**nexthdr) {
  case 129:
   break;
  case 128:
   found_rhdr = 1;
   break;
  case 130:





   if (ipv6_find_tlv(skb, offset, IPV6_TLV_HAO) >= 0) {
    net_dbg_ratelimited("mip6: hao exists already, override\n");
    return offset;
   }

   if (found_rhdr)
    return offset;

   break;
  default:
   return offset;
  }

  offset += ipv6_optlen(exthdr);
  *nexthdr = &exthdr->nexthdr;
  exthdr = (struct ipv6_opt_hdr *)(nh + offset);
 }

 return offset;
}
