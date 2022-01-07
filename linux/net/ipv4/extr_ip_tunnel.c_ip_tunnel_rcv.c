
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tnl_ptk_info {int flags; int seq; } ;
struct sk_buff {TYPE_3__* dev; int protocol; scalar_t__ len; int pkt_type; } ;
struct pcpu_sw_netstats {int syncp; int rx_bytes; int rx_packets; } ;
struct metadata_dst {int dummy; } ;
struct iphdr {int tos; int saddr; int daddr; } ;
struct TYPE_5__ {int i_flags; } ;
struct ip_tunnel {int gro_cells; TYPE_3__* dev; int net; scalar_t__ i_seqno; TYPE_1__ parms; } ;
struct dst_entry {int dummy; } ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {int rx_errors; int rx_frame_errors; int rx_fifo_errors; int rx_crc_errors; int multicast; } ;
struct TYPE_7__ {scalar_t__ type; int tstats; TYPE_2__ stats; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ETH_HLEN ;
 int IP_ECN_decapsulate (struct iphdr const*,struct sk_buff*) ;
 int PACKET_BROADCAST ;
 int TUNNEL_CSUM ;
 int TUNNEL_SEQ ;
 int dev_net (TYPE_3__*) ;
 int dst_release (struct dst_entry*) ;
 int eth_hdr (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,TYPE_3__*) ;
 int gro_cells_receive (int *,struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int ) ;
 int net_info_ratelimited (char*,int *,int ) ;
 scalar_t__ ntohl (int ) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int skb_postpull_rcsum (struct sk_buff*,int ,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_scrub_packet (struct sk_buff*,int) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

int ip_tunnel_rcv(struct ip_tunnel *tunnel, struct sk_buff *skb,
    const struct tnl_ptk_info *tpi, struct metadata_dst *tun_dst,
    bool log_ecn_error)
{
 struct pcpu_sw_netstats *tstats;
 const struct iphdr *iph = ip_hdr(skb);
 int err;
 if ((!(tpi->flags&TUNNEL_CSUM) && (tunnel->parms.i_flags&TUNNEL_CSUM)) ||
      ((tpi->flags&TUNNEL_CSUM) && !(tunnel->parms.i_flags&TUNNEL_CSUM))) {
  tunnel->dev->stats.rx_crc_errors++;
  tunnel->dev->stats.rx_errors++;
  goto drop;
 }

 if (tunnel->parms.i_flags&TUNNEL_SEQ) {
  if (!(tpi->flags&TUNNEL_SEQ) ||
      (tunnel->i_seqno && (s32)(ntohl(tpi->seq) - tunnel->i_seqno) < 0)) {
   tunnel->dev->stats.rx_fifo_errors++;
   tunnel->dev->stats.rx_errors++;
   goto drop;
  }
  tunnel->i_seqno = ntohl(tpi->seq) + 1;
 }

 skb_reset_network_header(skb);

 err = IP_ECN_decapsulate(iph, skb);
 if (unlikely(err)) {
  if (log_ecn_error)
   net_info_ratelimited("non-ECT from %pI4 with TOS=%#x\n",
     &iph->saddr, iph->tos);
  if (err > 1) {
   ++tunnel->dev->stats.rx_frame_errors;
   ++tunnel->dev->stats.rx_errors;
   goto drop;
  }
 }

 tstats = this_cpu_ptr(tunnel->dev->tstats);
 u64_stats_update_begin(&tstats->syncp);
 tstats->rx_packets++;
 tstats->rx_bytes += skb->len;
 u64_stats_update_end(&tstats->syncp);

 skb_scrub_packet(skb, !net_eq(tunnel->net, dev_net(tunnel->dev)));

 if (tunnel->dev->type == ARPHRD_ETHER) {
  skb->protocol = eth_type_trans(skb, tunnel->dev);
  skb_postpull_rcsum(skb, eth_hdr(skb), ETH_HLEN);
 } else {
  skb->dev = tunnel->dev;
 }

 if (tun_dst)
  skb_dst_set(skb, (struct dst_entry *)tun_dst);

 gro_cells_receive(&tunnel->gro_cells, skb);
 return 0;

drop:
 if (tun_dst)
  dst_release((struct dst_entry *)tun_dst);
 kfree_skb(skb);
 return 0;
}
