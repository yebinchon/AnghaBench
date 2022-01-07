
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hsr_sup_tag {scalar_t__ HSR_TLV_type; int HSR_TLV_length; } ;
struct TYPE_2__ {scalar_t__ encap_proto; } ;
struct hsrv1_ethhdr_sp {struct hsr_sup_tag hsr_sup; TYPE_1__ hsr; } ;
struct hsrv0_ethhdr_sp {struct hsr_sup_tag hsr_sup; } ;
struct hsr_sup_payload {int dummy; } ;
struct hsr_priv {int sup_multicast_addr; } ;
struct ethhdr {scalar_t__ h_proto; int h_dest; } ;


 int ETH_P_HSR ;
 int ETH_P_PRP ;
 scalar_t__ HSR_TLV_ANNOUNCE ;
 scalar_t__ HSR_TLV_LIFE_CHECK ;
 int WARN_ON_ONCE (int) ;
 int ether_addr_equal (int ,int ) ;
 scalar_t__ htons (int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_mac_header_was_set (struct sk_buff*) ;

__attribute__((used)) static bool is_supervision_frame(struct hsr_priv *hsr, struct sk_buff *skb)
{
 struct ethhdr *eth_hdr;
 struct hsr_sup_tag *hsr_sup_tag;
 struct hsrv1_ethhdr_sp *hsr_V1_hdr;

 WARN_ON_ONCE(!skb_mac_header_was_set(skb));
 eth_hdr = (struct ethhdr *)skb_mac_header(skb);


 if (!ether_addr_equal(eth_hdr->h_dest,
         hsr->sup_multicast_addr))
  return 0;


 if (!(eth_hdr->h_proto == htons(ETH_P_PRP) ||
       eth_hdr->h_proto == htons(ETH_P_HSR)))
  return 0;


 if (eth_hdr->h_proto == htons(ETH_P_HSR)) {
  hsr_V1_hdr = (struct hsrv1_ethhdr_sp *)skb_mac_header(skb);
  if (hsr_V1_hdr->hsr.encap_proto != htons(ETH_P_PRP))
   return 0;

  hsr_sup_tag = &hsr_V1_hdr->hsr_sup;
 } else {
  hsr_sup_tag =
       &((struct hsrv0_ethhdr_sp *)skb_mac_header(skb))->hsr_sup;
 }

 if (hsr_sup_tag->HSR_TLV_type != HSR_TLV_ANNOUNCE &&
     hsr_sup_tag->HSR_TLV_type != HSR_TLV_LIFE_CHECK)
  return 0;
 if (hsr_sup_tag->HSR_TLV_length != 12 &&
     hsr_sup_tag->HSR_TLV_length != sizeof(struct hsr_sup_payload))
  return 0;

 return 1;
}
