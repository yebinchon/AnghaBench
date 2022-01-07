
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
typedef int __be16 ;


 int ETH_P_802_2 ;
 scalar_t__ LLC_SAP_SNAP ;
 int __skb_pull (struct sk_buff*,int) ;
 scalar_t__ eth_proto_is_802_3 (int ) ;
 int htons (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static __be16 parse_ethertype(struct sk_buff *skb)
{
 struct llc_snap_hdr {
  u8 dsap;
  u8 ssap;
  u8 ctrl;
  u8 oui[3];
  __be16 ethertype;
 };
 struct llc_snap_hdr *llc;
 __be16 proto;

 proto = *(__be16 *) skb->data;
 __skb_pull(skb, sizeof(__be16));

 if (eth_proto_is_802_3(proto))
  return proto;

 if (skb->len < sizeof(struct llc_snap_hdr))
  return htons(ETH_P_802_2);

 if (unlikely(!pskb_may_pull(skb, sizeof(struct llc_snap_hdr))))
  return htons(0);

 llc = (struct llc_snap_hdr *) skb->data;
 if (llc->dsap != LLC_SAP_SNAP ||
     llc->ssap != LLC_SAP_SNAP ||
     (llc->oui[0] | llc->oui[1] | llc->oui[2]) != 0)
  return htons(ETH_P_802_2);

 __skb_pull(skb, sizeof(struct llc_snap_hdr));

 if (eth_proto_is_802_3(llc->ethertype))
  return llc->ethertype;

 return htons(ETH_P_802_2);
}
