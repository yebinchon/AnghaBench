
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skb_shared_info {int gso_type; scalar_t__ gso_segs; } ;
struct sk_buff {int protocol; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;


 int ENOTSUPP ;
 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int SKB_GSO_DODGY ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 int bpf_skb_net_hdr_pop (struct sk_buff*,int,int const) ;
 int htons (int ) ;
 int skb_clear_hash (struct sk_buff*) ;
 int skb_increase_gso_size (struct skb_shared_info*,int const) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int skb_is_gso_tcp (struct sk_buff*) ;
 int skb_mac_header_len (struct sk_buff*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;
 int skb_unclone (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bpf_skb_proto_6_to_4(struct sk_buff *skb)
{
 const u32 len_diff = sizeof(struct ipv6hdr) - sizeof(struct iphdr);
 u32 off = skb_mac_header_len(skb);
 int ret;

 if (skb_is_gso(skb) && !skb_is_gso_tcp(skb))
  return -ENOTSUPP;

 ret = skb_unclone(skb, GFP_ATOMIC);
 if (unlikely(ret < 0))
  return ret;

 ret = bpf_skb_net_hdr_pop(skb, off, len_diff);
 if (unlikely(ret < 0))
  return ret;

 if (skb_is_gso(skb)) {
  struct skb_shared_info *shinfo = skb_shinfo(skb);




  if (shinfo->gso_type & SKB_GSO_TCPV6) {
   shinfo->gso_type &= ~SKB_GSO_TCPV6;
   shinfo->gso_type |= SKB_GSO_TCPV4;
  }


  skb_increase_gso_size(shinfo, len_diff);

  shinfo->gso_type |= SKB_GSO_DODGY;
  shinfo->gso_segs = 0;
 }

 skb->protocol = htons(ETH_P_IP);
 skb_clear_hash(skb);

 return 0;
}
