
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ipv6hdr {int flow_lbl; int hop_limit; } ;
struct TYPE_2__ {int ihl; int flow_lbl; scalar_t__ optlen; int ttl; int tos; int frag_off; scalar_t__ id; } ;


 int IP_DF ;
 TYPE_1__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 int htons (int ) ;
 int ipv6_get_dsfield (struct ipv6hdr*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int memcpy (int ,int ,int) ;

int xfrm6_extract_header(struct sk_buff *skb)
{
 struct ipv6hdr *iph = ipv6_hdr(skb);

 XFRM_MODE_SKB_CB(skb)->ihl = sizeof(*iph);
 XFRM_MODE_SKB_CB(skb)->id = 0;
 XFRM_MODE_SKB_CB(skb)->frag_off = htons(IP_DF);
 XFRM_MODE_SKB_CB(skb)->tos = ipv6_get_dsfield(iph);
 XFRM_MODE_SKB_CB(skb)->ttl = iph->hop_limit;
 XFRM_MODE_SKB_CB(skb)->optlen = 0;
 memcpy(XFRM_MODE_SKB_CB(skb)->flow_lbl, iph->flow_lbl,
        sizeof(XFRM_MODE_SKB_CB(skb)->flow_lbl));

 return 0;
}
