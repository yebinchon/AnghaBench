
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ mark; scalar_t__ ignore_df; scalar_t__ skb_iif; int pkt_type; scalar_t__ tstamp; } ;


 int PACKET_HOST ;
 int ipvs_reset (struct sk_buff*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int nf_reset_trace (struct sk_buff*) ;
 int secpath_reset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;

__attribute__((used)) static void xfrmi_scrub_packet(struct sk_buff *skb, bool xnet)
{
 skb->tstamp = 0;
 skb->pkt_type = PACKET_HOST;
 skb->skb_iif = 0;
 skb->ignore_df = 0;
 skb_dst_drop(skb);
 nf_reset_ct(skb);
 nf_reset_trace(skb);

 if (!xnet)
  return;

 ipvs_reset(skb);
 secpath_reset(skb);
 skb_orphan(skb);
 skb->mark = 0;
}
