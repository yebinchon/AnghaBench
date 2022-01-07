
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int BPF_F_INGRESS ;
 int __bpf_rx_skb_no_mac (struct net_device*,struct sk_buff*) ;
 int __bpf_tx_skb (struct net_device*,struct sk_buff*) ;
 int __skb_pull (struct sk_buff*,unsigned int) ;
 int skb_at_tc_ingress (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 unsigned int skb_network_offset (struct sk_buff*) ;
 int skb_pop_mac_header (struct sk_buff*) ;
 int skb_postpull_rcsum (struct sk_buff*,int ,unsigned int) ;
 int skb_reset_mac_len (struct sk_buff*) ;

__attribute__((used)) static int __bpf_redirect_no_mac(struct sk_buff *skb, struct net_device *dev,
     u32 flags)
{
 unsigned int mlen = skb_network_offset(skb);

 if (mlen) {
  __skb_pull(skb, mlen);






  if (!skb_at_tc_ingress(skb))
   skb_postpull_rcsum(skb, skb_mac_header(skb), mlen);
 }
 skb_pop_mac_header(skb);
 skb_reset_mac_len(skb);
 return flags & BPF_F_INGRESS ?
        __bpf_rx_skb_no_mac(dev, skb) : __bpf_tx_skb(dev, skb);
}
