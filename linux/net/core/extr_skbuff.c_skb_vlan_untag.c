
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_hdr {int h_vlan_TCI; } ;
struct sk_buff {int protocol; scalar_t__ data; } ;


 int GFP_ATOMIC ;
 int VLAN_HLEN ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int skb_pull_rcsum (struct sk_buff*,int ) ;
 struct sk_buff* skb_reorder_vlan_header (struct sk_buff*) ;
 int skb_reset_mac_len (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int vlan_set_encap_proto (struct sk_buff*,struct vlan_hdr*) ;

struct sk_buff *skb_vlan_untag(struct sk_buff *skb)
{
 struct vlan_hdr *vhdr;
 u16 vlan_tci;

 if (unlikely(skb_vlan_tag_present(skb))) {

  return skb;
 }

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (unlikely(!skb))
  goto err_free;

 if (unlikely(!pskb_may_pull(skb, VLAN_HLEN)))
  goto err_free;

 vhdr = (struct vlan_hdr *)skb->data;
 vlan_tci = ntohs(vhdr->h_vlan_TCI);
 __vlan_hwaccel_put_tag(skb, skb->protocol, vlan_tci);

 skb_pull_rcsum(skb, VLAN_HLEN);
 vlan_set_encap_proto(skb, vhdr);

 skb = skb_reorder_vlan_header(skb);
 if (unlikely(!skb))
  goto err_free;

 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);
 skb_reset_mac_len(skb);

 return skb;

err_free:
 kfree_skb(skb);
 return ((void*)0);
}
