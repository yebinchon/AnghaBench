#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; void* pkt_type; void* protocol; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; } ;
struct net_device {scalar_t__ type; TYPE_1__ stats; } ;
struct lowpan_peer {int dummy; } ;
struct ipv6hdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_6LOWPAN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_DROP ; 
 scalar_t__ NET_RX_SUCCESS ; 
 scalar_t__ NET_SKB_PAD ; 
 void* PACKET_HOST ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct net_device*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct net_device*,struct lowpan_peer*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct net_device *dev,
		    struct lowpan_peer *peer)
{
	struct sk_buff *local_skb;
	int ret;

	if (!FUNC8(dev))
		goto drop;

	if (dev->type != ARPHRD_6LOWPAN || !skb->len)
		goto drop;

	FUNC13(skb);

	skb = FUNC15(skb, GFP_ATOMIC);
	if (!skb)
		goto drop;

	/* check that it's our buffer */
	if (FUNC7(*FUNC11(skb))) {
		/* Pull off the 1-byte of 6lowpan header. */
		FUNC12(skb, 1);

		/* Copy the packet so that the IPv6 header is
		 * properly aligned.
		 */
		local_skb = FUNC10(skb, NET_SKB_PAD - 1,
					    FUNC16(skb), GFP_ATOMIC);
		if (!local_skb)
			goto drop;

		local_skb->protocol = FUNC3(ETH_P_IPV6);
		local_skb->pkt_type = PACKET_HOST;
		local_skb->dev = dev;

		FUNC14(local_skb, sizeof(struct ipv6hdr));

		if (FUNC2(local_skb, dev) != NET_RX_SUCCESS) {
			FUNC5(local_skb);
			goto drop;
		}

		dev->stats.rx_bytes += skb->len;
		dev->stats.rx_packets++;

		FUNC1(local_skb);
		FUNC1(skb);
	} else if (FUNC6(*FUNC11(skb))) {
		local_skb = FUNC9(skb, GFP_ATOMIC);
		if (!local_skb)
			goto drop;

		local_skb->dev = dev;

		ret = FUNC4(local_skb, dev, peer);
		if (ret < 0) {
			FUNC0("iphc_decompress failed: %d", ret);
			FUNC5(local_skb);
			goto drop;
		}

		local_skb->protocol = FUNC3(ETH_P_IPV6);
		local_skb->pkt_type = PACKET_HOST;

		if (FUNC2(local_skb, dev)
				!= NET_RX_SUCCESS) {
			FUNC5(local_skb);
			goto drop;
		}

		dev->stats.rx_bytes += skb->len;
		dev->stats.rx_packets++;

		FUNC1(local_skb);
		FUNC1(skb);
	} else {
		FUNC0("unknown packet type");
		goto drop;
	}

	return NET_RX_SUCCESS;

drop:
	dev->stats.rx_dropped++;
	return NET_RX_DROP;
}