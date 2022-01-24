#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vif_device {int flags; TYPE_2__* dev; int /*<<< orphan*/  remote; int /*<<< orphan*/  local; int /*<<< orphan*/  bytes_out; int /*<<< orphan*/  pkt_out; int /*<<< orphan*/  link; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {scalar_t__ header_len; struct net_device* dev; } ;
struct rtable {TYPE_3__ dst; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {struct vif_device* vif_table; } ;
struct iphdr {int /*<<< orphan*/  frag_off; int /*<<< orphan*/  tos; int /*<<< orphan*/  daddr; } ;
struct flowi4 {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGMPMSG_WHOLEPKT ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  IPSKB_FORWARDED ; 
 int /*<<< orphan*/  IPSTATS_MIB_FRAGFAILS ; 
 int IP_DF ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rtable*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_FORWARD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int VIFF_REGISTER ; 
 int VIFF_TUNNEL ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC9 (struct sk_buff*) ; 
 struct rtable* FUNC10 (struct net*,struct flowi4*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC12 (struct mr_table*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipmr_forward_finish ; 
 scalar_t__ FUNC13 (struct sk_buff*,struct mr_table*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC19(struct net *net, struct mr_table *mrt,
			    int in_vifi, struct sk_buff *skb, int vifi)
{
	const struct iphdr *iph = FUNC9(skb);
	struct vif_device *vif = &mrt->vif_table[vifi];
	struct net_device *dev;
	struct rtable *rt;
	struct flowi4 fl4;
	int    encap = 0;

	if (!vif->dev)
		goto out_free;

	if (vif->flags & VIFF_REGISTER) {
		vif->pkt_out++;
		vif->bytes_out += skb->len;
		vif->dev->stats.tx_bytes += skb->len;
		vif->dev->stats.tx_packets++;
		FUNC12(mrt, skb, vifi, IGMPMSG_WHOLEPKT);
		goto out_free;
	}

	if (FUNC13(skb, mrt, in_vifi, vifi))
		goto out_free;

	if (vif->flags & VIFF_TUNNEL) {
		rt = FUNC10(net, &fl4, NULL,
					   vif->remote, vif->local,
					   0, 0,
					   IPPROTO_IPIP,
					   FUNC5(iph->tos), vif->link);
		if (FUNC2(rt))
			goto out_free;
		encap = sizeof(struct iphdr);
	} else {
		rt = FUNC10(net, &fl4, NULL, iph->daddr, 0,
					   0, 0,
					   IPPROTO_IPIP,
					   FUNC5(iph->tos), vif->link);
		if (FUNC2(rt))
			goto out_free;
	}

	dev = rt->dst.dev;

	if (skb->len+encap > FUNC6(&rt->dst) && (FUNC15(iph->frag_off) & IP_DF)) {
		/* Do not fragment multicasts. Alas, IPv4 does not
		 * allow to send ICMP, so that packets will disappear
		 * to blackhole.
		 */
		FUNC1(net, IPSTATS_MIB_FRAGFAILS);
		FUNC11(rt);
		goto out_free;
	}

	encap += FUNC3(dev) + rt->dst.header_len;

	if (FUNC16(skb, encap)) {
		FUNC11(rt);
		goto out_free;
	}

	vif->pkt_out++;
	vif->bytes_out += skb->len;

	FUNC17(skb);
	FUNC18(skb, &rt->dst);
	FUNC7(FUNC9(skb));

	/* FIXME: forward and output firewalls used to be called here.
	 * What do we do with netfilter? -- RR
	 */
	if (vif->flags & VIFF_TUNNEL) {
		FUNC8(net, skb, vif->local, vif->remote);
		/* FIXME: extra output firewall step used to be here. --RR */
		vif->dev->stats.tx_packets++;
		vif->dev->stats.tx_bytes += skb->len;
	}

	FUNC0(skb)->flags |= IPSKB_FORWARDED;

	/* RFC1584 teaches, that DVMRP/PIM router must deliver packets locally
	 * not only before forwarding, but after forwarding on all output
	 * interfaces. It is clear, if mrouter runs a multicasting
	 * program, it should receive packets not depending to what interface
	 * program is joined.
	 * If we will not make it, the program will have to join on all
	 * interfaces. On the other hand, multihoming host (or router, but
	 * not mrouter) cannot join to more than one interface - it will
	 * result in receiving multiple packets.
	 */
	FUNC4(NFPROTO_IPV4, NF_INET_FORWARD,
		net, NULL, skb, skb->dev, dev,
		ipmr_forward_finish);
	return;

out_free:
	FUNC14(skb);
}