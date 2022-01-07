
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int version; int ihl; scalar_t__ protocol; scalar_t__ source; int saddr; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int version; int ihl; scalar_t__ protocol; scalar_t__ source; int saddr; } ;
typedef int _udphdr ;
typedef int _iphdr ;
typedef int __be32 ;


 scalar_t__ IPPROTO_UDP ;
 int get_unaligned (int *) ;
 scalar_t__ htons (int) ;
 struct udphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct udphdr*) ;
 unsigned int skb_network_offset (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool
batadv_dat_check_dhcp_ipudp(struct sk_buff *skb, __be32 *ip_src)
{
 unsigned int offset = skb_network_offset(skb);
 struct udphdr *udphdr, _udphdr;
 struct iphdr *iphdr, _iphdr;

 iphdr = skb_header_pointer(skb, offset, sizeof(_iphdr), &_iphdr);
 if (!iphdr || iphdr->version != 4 || iphdr->ihl * 4 < sizeof(_iphdr))
  return 0;

 if (iphdr->protocol != IPPROTO_UDP)
  return 0;

 offset += iphdr->ihl * 4;
 skb_set_transport_header(skb, offset);

 udphdr = skb_header_pointer(skb, offset, sizeof(_udphdr), &_udphdr);
 if (!udphdr || udphdr->source != htons(67))
  return 0;

 *ip_src = get_unaligned(&iphdr->saddr);

 return 1;
}
