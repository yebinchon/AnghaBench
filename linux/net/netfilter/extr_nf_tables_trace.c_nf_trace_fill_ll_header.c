
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int veth ;
struct vlan_ethhdr {int h_vlan_encapsulated_proto; int h_vlan_TCI; int h_vlan_proto; } ;
struct sk_buff {int data; int protocol; int vlan_proto; } ;


 int BUILD_BUG_ON (int) ;
 int ETH_HLEN ;
 int NFTA_TRACE_LL_HEADER ;
 int NFT_TRACETYPE_LL_HSIZE ;
 int htons (int ) ;
 int nla_put (struct sk_buff*,int ,int,struct vlan_ethhdr*) ;
 scalar_t__ skb_copy_bits (struct sk_buff const*,int,struct vlan_ethhdr*,int) ;
 int skb_mac_header (struct sk_buff const*) ;
 int skb_vlan_tag_get (struct sk_buff const*) ;

__attribute__((used)) static int nf_trace_fill_ll_header(struct sk_buff *nlskb,
       const struct sk_buff *skb)
{
 struct vlan_ethhdr veth;
 int off;

 BUILD_BUG_ON(sizeof(veth) > NFT_TRACETYPE_LL_HSIZE);

 off = skb_mac_header(skb) - skb->data;
 if (off != -ETH_HLEN)
  return -1;

 if (skb_copy_bits(skb, off, &veth, ETH_HLEN))
  return -1;

 veth.h_vlan_proto = skb->vlan_proto;
 veth.h_vlan_TCI = htons(skb_vlan_tag_get(skb));
 veth.h_vlan_encapsulated_proto = skb->protocol;

 return nla_put(nlskb, NFTA_TRACE_LL_HEADER, sizeof(veth), &veth);
}
