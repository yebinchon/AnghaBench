#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tnl_ptk_info {int flags; int /*<<< orphan*/  seq; } ;
struct sk_buff {TYPE_3__* dev; int /*<<< orphan*/  protocol; scalar_t__ len; int /*<<< orphan*/  pkt_type; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct metadata_dst {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_5__ {int i_flags; } ;
struct ip_tunnel {int /*<<< orphan*/  gro_cells; TYPE_3__* dev; int /*<<< orphan*/  net; scalar_t__ i_seqno; TYPE_1__ parms; } ;
struct dst_entry {int dummy; } ;
typedef  scalar_t__ s32 ;
struct TYPE_6__ {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  multicast; } ;
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  tstats; TYPE_2__ stats; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int FUNC0 (struct iphdr const*,struct sk_buff*) ; 
 int /*<<< orphan*/  PACKET_BROADCAST ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_SEQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 struct pcpu_sw_netstats* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int) ; 

int FUNC20(struct ip_tunnel *tunnel, struct sk_buff *skb,
		  const struct tnl_ptk_info *tpi, struct metadata_dst *tun_dst,
		  bool log_ecn_error)
{
	struct pcpu_sw_netstats *tstats;
	const struct iphdr *iph = FUNC6(skb);
	int err;

#ifdef CONFIG_NET_IPGRE_BROADCAST
	if (ipv4_is_multicast(iph->daddr)) {
		tunnel->dev->stats.multicast++;
		skb->pkt_type = PACKET_BROADCAST;
	}
#endif

	if ((!(tpi->flags&TUNNEL_CSUM) &&  (tunnel->parms.i_flags&TUNNEL_CSUM)) ||
	     ((tpi->flags&TUNNEL_CSUM) && !(tunnel->parms.i_flags&TUNNEL_CSUM))) {
		tunnel->dev->stats.rx_crc_errors++;
		tunnel->dev->stats.rx_errors++;
		goto drop;
	}

	if (tunnel->parms.i_flags&TUNNEL_SEQ) {
		if (!(tpi->flags&TUNNEL_SEQ) ||
		    (tunnel->i_seqno && (s32)(FUNC11(tpi->seq) - tunnel->i_seqno) < 0)) {
			tunnel->dev->stats.rx_fifo_errors++;
			tunnel->dev->stats.rx_errors++;
			goto drop;
		}
		tunnel->i_seqno = FUNC11(tpi->seq) + 1;
	}

	FUNC14(skb);

	err = FUNC0(iph, skb);
	if (FUNC19(err)) {
		if (log_ecn_error)
			FUNC10("non-ECT from %pI4 with TOS=%#x\n",
					&iph->saddr, iph->tos);
		if (err > 1) {
			++tunnel->dev->stats.rx_frame_errors;
			++tunnel->dev->stats.rx_errors;
			goto drop;
		}
	}

	tstats = FUNC16(tunnel->dev->tstats);
	FUNC17(&tstats->syncp);
	tstats->rx_packets++;
	tstats->rx_bytes += skb->len;
	FUNC18(&tstats->syncp);

	FUNC15(skb, !FUNC9(tunnel->net, FUNC1(tunnel->dev)));

	if (tunnel->dev->type == ARPHRD_ETHER) {
		skb->protocol = FUNC4(skb, tunnel->dev);
		FUNC13(skb, FUNC3(skb), ETH_HLEN);
	} else {
		skb->dev = tunnel->dev;
	}

	if (tun_dst)
		FUNC12(skb, (struct dst_entry *)tun_dst);

	FUNC5(&tunnel->gro_cells, skb);
	return 0;

drop:
	if (tun_dst)
		FUNC2((struct dst_entry *)tun_dst);
	FUNC8(skb);
	return 0;
}