
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_hdr {int h_vlan_TCI; } ;
struct sk_buff {int data; int mac_header; } ;


 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 int VLAN_ETH_HLEN ;
 scalar_t__ VLAN_HLEN ;
 scalar_t__ WARN_ONCE (int,char*,int) ;
 int __skb_pull (struct sk_buff*,scalar_t__) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int ntohs (int ) ;
 int skb_ensure_writable (struct sk_buff*,int ) ;
 int skb_mac_header (struct sk_buff*) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 int skb_postpull_rcsum (struct sk_buff*,int,scalar_t__) ;
 int skb_reset_mac_len (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int vlan_set_encap_proto (struct sk_buff*,struct vlan_hdr*) ;

int __skb_vlan_pop(struct sk_buff *skb, u16 *vlan_tci)
{
 struct vlan_hdr *vhdr;
 int offset = skb->data - skb_mac_header(skb);
 int err;

 if (WARN_ONCE(offset,
        "__skb_vlan_pop got skb with skb->data not at mac header (offset %d)\n",
        offset)) {
  return -EINVAL;
 }

 err = skb_ensure_writable(skb, VLAN_ETH_HLEN);
 if (unlikely(err))
  return err;

 skb_postpull_rcsum(skb, skb->data + (2 * ETH_ALEN), VLAN_HLEN);

 vhdr = (struct vlan_hdr *)(skb->data + ETH_HLEN);
 *vlan_tci = ntohs(vhdr->h_vlan_TCI);

 memmove(skb->data + VLAN_HLEN, skb->data, 2 * ETH_ALEN);
 __skb_pull(skb, VLAN_HLEN);

 vlan_set_encap_proto(skb, vhdr);
 skb->mac_header += VLAN_HLEN;

 if (skb_network_offset(skb) < ETH_HLEN)
  skb_set_network_header(skb, ETH_HLEN);

 skb_reset_mac_len(skb);

 return err;
}
