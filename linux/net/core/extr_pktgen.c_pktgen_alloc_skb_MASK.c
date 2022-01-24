#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {struct net_device* dev; } ;
struct pktgen_dev {int cur_pkt_size; int pkt_overhead; int flags; int node; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int F_NODE ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 unsigned int FUNC0 (struct net_device*) ; 
 unsigned int NET_SKB_PAD ; 
 struct sk_buff* FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC2 (struct net_device*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct net_device *dev,
					struct pktgen_dev *pkt_dev)
{
	unsigned int extralen = FUNC0(dev);
	struct sk_buff *skb = NULL;
	unsigned int size;

	size = pkt_dev->cur_pkt_size + 64 + extralen + pkt_dev->pkt_overhead;
	if (pkt_dev->flags & F_NODE) {
		int node = pkt_dev->node >= 0 ? pkt_dev->node : FUNC4();

		skb = FUNC1(NET_SKB_PAD + size, GFP_NOWAIT, 0, node);
		if (FUNC3(skb)) {
			FUNC5(skb, NET_SKB_PAD);
			skb->dev = dev;
		}
	} else {
		 skb = FUNC2(dev, size, GFP_NOWAIT);
	}

	/* the caller pre-fetches from skb->data and reserves for the mac hdr */
	if (FUNC3(skb))
		FUNC5(skb, extralen - 16);

	return skb;
}