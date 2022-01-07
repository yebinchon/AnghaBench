
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ tstamp; scalar_t__ mark; scalar_t__ offload_l3_fwd_mark; scalar_t__ offload_fwd_mark; scalar_t__ ignore_df; scalar_t__ skb_iif; int pkt_type; } ;


 int PACKET_HOST ;
 int ipvs_reset (struct sk_buff*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int nf_reset_trace (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_ext_reset (struct sk_buff*) ;

void skb_scrub_packet(struct sk_buff *skb, bool xnet)
{
 skb->pkt_type = PACKET_HOST;
 skb->skb_iif = 0;
 skb->ignore_df = 0;
 skb_dst_drop(skb);
 skb_ext_reset(skb);
 nf_reset_ct(skb);
 nf_reset_trace(skb);






 if (!xnet)
  return;

 ipvs_reset(skb);
 skb->mark = 0;
 skb->tstamp = 0;
}
