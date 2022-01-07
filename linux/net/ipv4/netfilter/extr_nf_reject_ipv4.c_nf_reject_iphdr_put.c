
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {void* protocol; } ;
struct iphdr {int version; int ihl; int ttl; int saddr; int daddr; scalar_t__ check; int protocol; void* frag_off; scalar_t__ id; scalar_t__ tos; } ;
typedef int __u8 ;


 int ETH_P_IP ;
 int IP_DF ;
 void* htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 struct iphdr* skb_put (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

struct iphdr *nf_reject_iphdr_put(struct sk_buff *nskb,
      const struct sk_buff *oldskb,
      __u8 protocol, int ttl)
{
 struct iphdr *niph, *oiph = ip_hdr(oldskb);

 skb_reset_network_header(nskb);
 niph = skb_put(nskb, sizeof(struct iphdr));
 niph->version = 4;
 niph->ihl = sizeof(struct iphdr) / 4;
 niph->tos = 0;
 niph->id = 0;
 niph->frag_off = htons(IP_DF);
 niph->protocol = protocol;
 niph->check = 0;
 niph->saddr = oiph->daddr;
 niph->daddr = oiph->saddr;
 niph->ttl = ttl;

 nskb->protocol = htons(ETH_P_IP);

 return niph;
}
