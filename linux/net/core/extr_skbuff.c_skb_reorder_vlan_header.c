
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {void* data; int mac_header; } ;


 int ETH_TLEN ;
 int VLAN_HLEN ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int memmove (void*,void*,int) ;
 scalar_t__ skb_cow (struct sk_buff*,int ) ;
 int skb_headroom (struct sk_buff*) ;
 void* skb_mac_header (struct sk_buff*) ;
 int skb_metadata_end (struct sk_buff*) ;
 int skb_metadata_len (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *skb_reorder_vlan_header(struct sk_buff *skb)
{
 int mac_len, meta_len;
 void *meta;

 if (skb_cow(skb, skb_headroom(skb)) < 0) {
  kfree_skb(skb);
  return ((void*)0);
 }

 mac_len = skb->data - skb_mac_header(skb);
 if (likely(mac_len > VLAN_HLEN + ETH_TLEN)) {
  memmove(skb_mac_header(skb) + VLAN_HLEN, skb_mac_header(skb),
   mac_len - VLAN_HLEN - ETH_TLEN);
 }

 meta_len = skb_metadata_len(skb);
 if (meta_len) {
  meta = skb_metadata_end(skb) - meta_len;
  memmove(meta + VLAN_HLEN, meta, meta_len);
 }

 skb->mac_header += VLAN_HLEN;
 return skb;
}
