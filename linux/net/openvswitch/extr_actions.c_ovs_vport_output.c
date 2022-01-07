
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int network_header; int inner_network_header; int protocol; int data; int inner_protocol; } ;
struct ovs_frag_data {int vlan_tci; int mac_proto; int network_offset; int l2_len; int l2_data; int vlan_proto; int inner_protocol; int cb; int dst; struct vport* vport; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int * OVS_CB (struct sk_buff*) ;
 int VLAN_CFI_MASK ;
 int __skb_dst_copy (struct sk_buff*,int ) ;
 int __vlan_hwaccel_clear_tag (struct sk_buff*) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 scalar_t__ eth_p_mpls (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int *,int ) ;
 int ovs_frag_data_storage ;
 int ovs_vport_send (struct vport*,struct sk_buff*,int ) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;
 int skb_postpush_rcsum (struct sk_buff*,int ,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_mac_len (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int ) ;
 struct ovs_frag_data* this_cpu_ptr (int *) ;

__attribute__((used)) static int ovs_vport_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct ovs_frag_data *data = this_cpu_ptr(&ovs_frag_data_storage);
 struct vport *vport = data->vport;

 if (skb_cow_head(skb, data->l2_len) < 0) {
  kfree_skb(skb);
  return -ENOMEM;
 }

 __skb_dst_copy(skb, data->dst);
 *OVS_CB(skb) = data->cb;
 skb->inner_protocol = data->inner_protocol;
 if (data->vlan_tci & VLAN_CFI_MASK)
  __vlan_hwaccel_put_tag(skb, data->vlan_proto, data->vlan_tci & ~VLAN_CFI_MASK);
 else
  __vlan_hwaccel_clear_tag(skb);


 skb_push(skb, data->l2_len);
 memcpy(skb->data, &data->l2_data, data->l2_len);
 skb_postpush_rcsum(skb, skb->data, data->l2_len);
 skb_reset_mac_header(skb);

 if (eth_p_mpls(skb->protocol)) {
  skb->inner_network_header = skb->network_header;
  skb_set_network_header(skb, data->network_offset);
  skb_reset_mac_len(skb);
 }

 ovs_vport_send(vport, skb, data->mac_proto);
 return 0;
}
