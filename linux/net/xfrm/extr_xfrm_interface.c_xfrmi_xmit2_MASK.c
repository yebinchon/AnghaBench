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
struct xfrm_state {scalar_t__ if_id; } ;
struct TYPE_4__ {scalar_t__ if_id; } ;
struct xfrm_if {int /*<<< orphan*/  net; TYPE_2__ p; TYPE_1__* dev; } ;
struct sk_buff {unsigned int len; scalar_t__ protocol; int /*<<< orphan*/  sk; struct net_device* dev; int /*<<< orphan*/  ignore_df; } ;
struct pcpu_sw_netstats {unsigned int tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_packets; } ;
struct net_device_stats {int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  collisions; } ;
struct net_device {int /*<<< orphan*/  tstats; int /*<<< orphan*/  name; } ;
struct flowi {int dummy; } ;
struct dst_entry {struct net_device* dev; struct xfrm_state* xfrm; } ;
struct TYPE_3__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
 int IPV6_MIN_MTU ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int FUNC1 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct dst_entry*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 struct xfrm_if* FUNC15 (struct net_device*) ; 
 struct dst_entry* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 struct pcpu_sw_netstats* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 struct dst_entry* FUNC22 (int /*<<< orphan*/ ,struct dst_entry*,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC24(struct sk_buff *skb, struct net_device *dev, struct flowi *fl)
{
	struct xfrm_if *xi = FUNC15(dev);
	struct net_device_stats *stats = &xi->dev->stats;
	struct dst_entry *dst = FUNC16(skb);
	unsigned int length = skb->len;
	struct net_device *tdev;
	struct xfrm_state *x;
	int err = -1;
	int mtu;

	if (!dst)
		goto tx_err_link_failure;

	FUNC3(dst);
	dst = FUNC22(xi->net, dst, fl, NULL, 0, xi->p.if_id);
	if (FUNC0(dst)) {
		err = FUNC1(dst);
		dst = NULL;
		goto tx_err_link_failure;
	}

	x = dst->xfrm;
	if (!x)
		goto tx_err_link_failure;

	if (x->if_id != xi->p.if_id)
		goto tx_err_link_failure;

	tdev = dst->dev;

	if (tdev == dev) {
		stats->collisions++;
		FUNC13("%s: Local routing loop detected!\n",
				     dev->name);
		goto tx_err_dst_release;
	}

	mtu = FUNC5(dst);
	if (!skb->ignore_df && skb->len > mtu) {
		FUNC18(skb, mtu);

		if (skb->protocol == FUNC9(ETH_P_IPV6)) {
			if (mtu < IPV6_MIN_MTU)
				mtu = IPV6_MIN_MTU;

			FUNC11(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
		} else {
			FUNC10(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
				  FUNC8(mtu));
		}

		FUNC7(dst);
		return -EMSGSIZE;
	}

	FUNC23(skb, !FUNC12(xi->net, FUNC2(dev)));
	FUNC17(skb, dst);
	skb->dev = tdev;

	err = FUNC6(xi->net, skb->sk, skb);
	if (FUNC14(err) == 0) {
		struct pcpu_sw_netstats *tstats = FUNC19(dev->tstats);

		FUNC20(&tstats->syncp);
		tstats->tx_bytes += length;
		tstats->tx_packets++;
		FUNC21(&tstats->syncp);
	} else {
		stats->tx_errors++;
		stats->tx_aborted_errors++;
	}

	return 0;
tx_err_link_failure:
	stats->tx_carrier_errors++;
	FUNC4(skb);
tx_err_dst_release:
	FUNC7(dst);
	return err;
}