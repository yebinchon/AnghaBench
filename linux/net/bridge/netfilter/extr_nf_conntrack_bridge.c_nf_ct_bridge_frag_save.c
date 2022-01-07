
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int vlan_proto; int vlan_tci; } ;
struct nf_bridge_frag_data {int vlan_present; int mac; int vlan_proto; int vlan_tci; } ;


 int ETH_HLEN ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static void nf_ct_bridge_frag_save(struct sk_buff *skb,
       struct nf_bridge_frag_data *data)
{
 if (skb_vlan_tag_present(skb)) {
  data->vlan_present = 1;
  data->vlan_tci = skb->vlan_tci;
  data->vlan_proto = skb->vlan_proto;
 } else {
  data->vlan_present = 0;
 }
 skb_copy_from_linear_data_offset(skb, -ETH_HLEN, data->mac, ETH_HLEN);
}
