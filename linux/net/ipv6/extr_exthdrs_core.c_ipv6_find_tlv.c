
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipv6_opt_hdr {int hdrlen; } ;



 unsigned char* skb_network_header (struct sk_buff const*) ;
 unsigned char* skb_tail_pointer (struct sk_buff const*) ;

int ipv6_find_tlv(const struct sk_buff *skb, int offset, int type)
{
 const unsigned char *nh = skb_network_header(skb);
 int packet_len = skb_tail_pointer(skb) - skb_network_header(skb);
 struct ipv6_opt_hdr *hdr;
 int len;

 if (offset + 2 > packet_len)
  goto bad;
 hdr = (struct ipv6_opt_hdr *)(nh + offset);
 len = ((hdr->hdrlen + 1) << 3);

 if (offset + len > packet_len)
  goto bad;

 offset += 2;
 len -= 2;

 while (len > 0) {
  int opttype = nh[offset];
  int optlen;

  if (opttype == type)
   return offset;

  switch (opttype) {
  case 128:
   optlen = 1;
   break;
  default:
   optlen = nh[offset + 1] + 2;
   if (optlen > len)
    goto bad;
   break;
  }
  offset += optlen;
  len -= optlen;
 }

 bad:
 return -1;
}
