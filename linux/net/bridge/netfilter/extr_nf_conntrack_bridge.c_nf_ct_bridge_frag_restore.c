
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_bridge_frag_data {int mac; int vlan_tci; int vlan_proto; scalar_t__ vlan_present; } ;


 int ENOMEM ;
 int ETH_HLEN ;
 int __vlan_hwaccel_clear_tag (struct sk_buff*) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,int ,int ,int ) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static int nf_ct_bridge_frag_restore(struct sk_buff *skb,
         const struct nf_bridge_frag_data *data)
{
 int err;

 err = skb_cow_head(skb, ETH_HLEN);
 if (err) {
  kfree_skb(skb);
  return -ENOMEM;
 }
 if (data->vlan_present)
  __vlan_hwaccel_put_tag(skb, data->vlan_proto, data->vlan_tci);
 else if (skb_vlan_tag_present(skb))
  __vlan_hwaccel_clear_tag(skb);

 skb_copy_to_linear_data_offset(skb, -ETH_HLEN, data->mac, ETH_HLEN);
 skb_reset_mac_header(skb);

 return 0;
}
