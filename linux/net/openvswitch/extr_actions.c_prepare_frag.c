
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vport {int dummy; } ;
struct sk_buff {int data; int vlan_proto; int inner_protocol; int _skb_refdst; } ;
struct ovs_frag_data {int vlan_tci; unsigned int l2_len; int l2_data; int mac_proto; int vlan_proto; int network_offset; int inner_protocol; int cb; struct vport* vport; int dst; } ;
struct inet_skb_parm {int dummy; } ;


 int IPCB (struct sk_buff*) ;
 int * OVS_CB (struct sk_buff*) ;
 int VLAN_CFI_MASK ;
 int memcpy (int *,int ,unsigned int) ;
 int memset (int ,int ,int) ;
 int ovs_frag_data_storage ;
 unsigned int skb_network_offset (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,unsigned int) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;
 struct ovs_frag_data* this_cpu_ptr (int *) ;

__attribute__((used)) static void prepare_frag(struct vport *vport, struct sk_buff *skb,
    u16 orig_network_offset, u8 mac_proto)
{
 unsigned int hlen = skb_network_offset(skb);
 struct ovs_frag_data *data;

 data = this_cpu_ptr(&ovs_frag_data_storage);
 data->dst = skb->_skb_refdst;
 data->vport = vport;
 data->cb = *OVS_CB(skb);
 data->inner_protocol = skb->inner_protocol;
 data->network_offset = orig_network_offset;
 if (skb_vlan_tag_present(skb))
  data->vlan_tci = skb_vlan_tag_get(skb) | VLAN_CFI_MASK;
 else
  data->vlan_tci = 0;
 data->vlan_proto = skb->vlan_proto;
 data->mac_proto = mac_proto;
 data->l2_len = hlen;
 memcpy(&data->l2_data, skb->data, hlen);

 memset(IPCB(skb), 0, sizeof(struct inet_skb_parm));
 skb_pull(skb, hlen);
}
