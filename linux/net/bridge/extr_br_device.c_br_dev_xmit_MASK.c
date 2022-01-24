#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct nf_br_ops {scalar_t__ (* br_dev_xmit_hook ) (struct sk_buff*) ;} ;
struct net_device {int dummy; } ;
struct net_bridge_mdb_entry {int dummy; } ;
struct net_bridge_fdb_entry {int /*<<< orphan*/  dst; } ;
struct net_bridge {int /*<<< orphan*/  stats; } ;
struct nd_msg {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ethhdr {scalar_t__ h_proto; unsigned char* h_dest; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {scalar_t__ frag_max_size; struct net_device* brdev; } ;
struct TYPE_3__ {scalar_t__ nexthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_NEIGH_SUPPRESS_ENABLED ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  BR_PKT_BROADCAST ; 
 int /*<<< orphan*/  BR_PKT_MULTICAST ; 
 int /*<<< orphan*/  BR_PKT_UNICAST ; 
 int /*<<< orphan*/  CONFIG_INET ; 
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  ETH_P_RARP ; 
 scalar_t__ IPPROTO_ICMPV6 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_bridge*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_bridge*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nd_msg*) ; 
 struct net_bridge_fdb_entry* FUNC6 (struct net_bridge*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge*,struct sk_buff*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sk_buff*,int,int) ; 
 struct nd_msg* FUNC9 (struct sk_buff*,struct nd_msg*) ; 
 struct net_bridge_mdb_entry* FUNC10 (struct net_bridge*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_bridge_mdb_entry*,struct sk_buff*,int,int) ; 
 scalar_t__ FUNC12 (struct net_bridge*,struct ethhdr*) ; 
 scalar_t__ FUNC13 (struct net_bridge*,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_bridge*) ; 
 struct ethhdr* FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (unsigned char const*) ; 
 scalar_t__ FUNC21 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 struct net_bridge* FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  nf_br_ops ; 
 scalar_t__ FUNC25 (struct sk_buff*,int) ; 
 struct nf_br_ops* FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*) ; 
 scalar_t__ FUNC31 (struct sk_buff*) ; 
 struct pcpu_sw_netstats* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ) ; 

netdev_tx_t FUNC36(struct sk_buff *skb, struct net_device *dev)
{
	struct net_bridge *br = FUNC23(dev);
	struct net_bridge_fdb_entry *dst;
	struct net_bridge_mdb_entry *mdst;
	struct pcpu_sw_netstats *brstats = FUNC32(br->stats);
	const struct nf_br_ops *nf_ops;
	const unsigned char *dest;
	struct ethhdr *eth;
	u16 vid = 0;

	FUNC27();
	nf_ops = FUNC26(nf_br_ops);
	if (nf_ops && nf_ops->br_dev_xmit_hook(skb)) {
		FUNC28();
		return NETDEV_TX_OK;
	}

	FUNC33(&brstats->syncp);
	brstats->tx_packets++;
	brstats->tx_bytes += skb->len;
	FUNC34(&brstats->syncp);

	FUNC15(skb);
	FUNC0(skb)->brdev = dev;
	FUNC0(skb)->frag_max_size = 0;

	FUNC30(skb);
	eth = FUNC17(skb);
	FUNC29(skb, ETH_HLEN);

	if (!FUNC3(br, FUNC16(br), skb, &vid))
		goto out;

	if (FUNC2(CONFIG_INET) &&
	    (eth->h_proto == FUNC18(ETH_P_ARP) ||
	     eth->h_proto == FUNC18(ETH_P_RARP)) &&
	    FUNC14(br, BROPT_NEIGH_SUPPRESS_ENABLED)) {
		FUNC4(skb, br, vid, NULL);
	} else if (FUNC2(CONFIG_IPV6) &&
		   skb->protocol == FUNC18(ETH_P_IPV6) &&
		   FUNC14(br, BROPT_NEIGH_SUPPRESS_ENABLED) &&
		   FUNC25(skb, sizeof(struct ipv6hdr) +
				 sizeof(struct nd_msg)) &&
		   FUNC19(skb)->nexthdr == IPPROTO_ICMPV6) {
			struct nd_msg *msg, _msg;

			msg = FUNC9(skb, &_msg);
			if (msg)
				FUNC5(skb, br, vid, NULL, msg);
	}

	dest = FUNC17(skb)->h_dest;
	if (FUNC20(dest)) {
		FUNC7(br, skb, BR_PKT_BROADCAST, false, true);
	} else if (FUNC21(dest)) {
		if (FUNC35(FUNC24(dev))) {
			FUNC7(br, skb, BR_PKT_MULTICAST, false, true);
			goto out;
		}
		if (FUNC13(br, NULL, skb, vid)) {
			FUNC22(skb);
			goto out;
		}

		mdst = FUNC10(br, skb, vid);
		if ((mdst || FUNC1(skb)) &&
		    FUNC12(br, FUNC17(skb)))
			FUNC11(mdst, skb, false, true);
		else
			FUNC7(br, skb, BR_PKT_MULTICAST, false, true);
	} else if ((dst = FUNC6(br, dest, vid)) != NULL) {
		FUNC8(dst->dst, skb, false, true);
	} else {
		FUNC7(br, skb, BR_PKT_UNICAST, false, true);
	}
out:
	FUNC28();
	return NETDEV_TX_OK;
}