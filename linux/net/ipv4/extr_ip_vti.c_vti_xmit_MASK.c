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
struct sk_buff {int len; scalar_t__ protocol; int /*<<< orphan*/  sk; struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; } ;
struct ip_tunnel {int /*<<< orphan*/  net; struct ip_tunnel_parm parms; } ;
struct flowi {int dummy; } ;
struct dst_entry {struct net_device* dev; int /*<<< orphan*/  xfrm; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
 int IPV6_MIN_MTU ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct dst_entry*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 struct ip_tunnel* FUNC15 (struct net_device*) ; 
 struct dst_entry* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC21 (int /*<<< orphan*/ ,struct dst_entry*,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC22(struct sk_buff *skb, struct net_device *dev,
			    struct flowi *fl)
{
	struct ip_tunnel *tunnel = FUNC15(dev);
	struct ip_tunnel_parm *parms = &tunnel->parms;
	struct dst_entry *dst = FUNC16(skb);
	struct net_device *tdev;	/* Device to other host */
	int pkt_len = skb->len;
	int err;
	int mtu;

	if (!dst) {
		dev->stats.tx_carrier_errors++;
		goto tx_error_icmp;
	}

	FUNC2(dst);
	dst = FUNC21(tunnel->net, dst, fl, NULL, 0);
	if (FUNC0(dst)) {
		dev->stats.tx_carrier_errors++;
		goto tx_error_icmp;
	}

	if (!FUNC20(dst->xfrm, parms->iph.daddr, parms->iph.saddr)) {
		dev->stats.tx_carrier_errors++;
		FUNC6(dst);
		goto tx_error_icmp;
	}

	tdev = dst->dev;

	if (tdev == dev) {
		FUNC6(dst);
		dev->stats.collisions++;
		goto tx_error;
	}

	mtu = FUNC4(dst);
	if (skb->len > mtu) {
		FUNC18(skb, mtu);
		if (skb->protocol == FUNC8(ETH_P_IP)) {
			FUNC9(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
				  FUNC7(mtu));
		} else {
			if (mtu < IPV6_MIN_MTU)
				mtu = IPV6_MIN_MTU;

			FUNC10(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
		}

		FUNC6(dst);
		goto tx_error;
	}

	FUNC19(skb, !FUNC13(tunnel->net, FUNC1(dev)));
	FUNC17(skb, dst);
	skb->dev = FUNC16(skb)->dev;

	err = FUNC5(tunnel->net, skb->sk, skb);
	if (FUNC14(err) == 0)
		err = pkt_len;
	FUNC11(dev, err);
	return NETDEV_TX_OK;

tx_error_icmp:
	FUNC3(skb);
tx_error:
	dev->stats.tx_errors++;
	FUNC12(skb);
	return NETDEV_TX_OK;
}