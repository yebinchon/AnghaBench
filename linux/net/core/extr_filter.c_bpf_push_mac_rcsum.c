
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int mac_len; } ;


 scalar_t__ skb_at_tc_ingress (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_postpush_rcsum (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline void bpf_push_mac_rcsum(struct sk_buff *skb)
{
 if (skb_at_tc_ingress(skb))
  skb_postpush_rcsum(skb, skb_mac_header(skb), skb->mac_len);
}
