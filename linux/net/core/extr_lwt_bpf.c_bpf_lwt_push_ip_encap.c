
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int encapsulation; void* protocol; scalar_t__ mac_len; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int version; int ihl; scalar_t__ check; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ LL_RESERVED_SPACE (int ) ;
 int LWT_BPF_MAX_HEADROOM ;
 int bpf_compute_data_pointers (struct sk_buff*) ;
 int handle_gso_encap (struct sk_buff*,int,int) ;
 void* htons (int ) ;
 scalar_t__ ip_fast_csum (unsigned char*,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int memcpy (int ,void*,int) ;
 int skb_clear_hash (struct sk_buff*) ;
 int skb_cow_head (struct sk_buff*,scalar_t__) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_postpush_rcsum (struct sk_buff*,struct iphdr*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_inner_headers (struct sk_buff*) ;
 int skb_reset_inner_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_inner_protocol (struct sk_buff*,void*) ;
 scalar_t__ unlikely (int) ;

int bpf_lwt_push_ip_encap(struct sk_buff *skb, void *hdr, u32 len, bool ingress)
{
 struct iphdr *iph;
 bool ipv4;
 int err;

 if (unlikely(len < sizeof(struct iphdr) || len > LWT_BPF_MAX_HEADROOM))
  return -EINVAL;


 iph = (struct iphdr *)hdr;
 if (iph->version == 4) {
  ipv4 = 1;
  if (unlikely(len < iph->ihl * 4))
   return -EINVAL;
 } else if (iph->version == 6) {
  ipv4 = 0;
  if (unlikely(len < sizeof(struct ipv6hdr)))
   return -EINVAL;
 } else {
  return -EINVAL;
 }

 if (ingress)
  err = skb_cow_head(skb, len + skb->mac_len);
 else
  err = skb_cow_head(skb,
       len + LL_RESERVED_SPACE(skb_dst(skb)->dev));
 if (unlikely(err))
  return err;


 skb_reset_inner_headers(skb);
 skb_reset_inner_mac_header(skb);
 skb_set_inner_protocol(skb, skb->protocol);
 skb->encapsulation = 1;
 skb_push(skb, len);
 if (ingress)
  skb_postpush_rcsum(skb, iph, len);
 skb_reset_network_header(skb);
 memcpy(skb_network_header(skb), hdr, len);
 bpf_compute_data_pointers(skb);
 skb_clear_hash(skb);

 if (ipv4) {
  skb->protocol = htons(ETH_P_IP);
  iph = ip_hdr(skb);

  if (!iph->check)
   iph->check = ip_fast_csum((unsigned char *)iph,
        iph->ihl);
 } else {
  skb->protocol = htons(ETH_P_IPV6);
 }

 if (skb_is_gso(skb))
  return handle_gso_encap(skb, ipv4, len);

 return 0;
}
