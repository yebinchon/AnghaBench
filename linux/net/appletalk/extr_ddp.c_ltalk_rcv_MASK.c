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
struct sk_buff {int len; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct ddpehdr {int deh_dnode; int deh_snode; int /*<<< orphan*/  deh_len_hops; scalar_t__ deh_sum; int /*<<< orphan*/  deh_snet; int /*<<< orphan*/  deh_dnet; } ;
struct atalk_addr {int /*<<< orphan*/  s_net; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int DDP_MAXHOPS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct atalk_addr* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* FUNC6 (struct sk_buff*) ; 
 struct ddpehdr* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *dev,
		     struct packet_type *pt, struct net_device *orig_dev)
{
	if (!FUNC5(FUNC2(dev), &init_net))
		goto freeit;

	/* Expand any short form frames */
	if (FUNC6(skb)[2] == 1) {
		struct ddpehdr *ddp;
		/* Find our address */
		struct atalk_addr *ap = FUNC0(dev);

		if (!ap || skb->len < sizeof(__be16) || skb->len > 1023)
			goto freeit;

		/* Don't mangle buffer if shared */
		if (!(skb = FUNC9(skb, GFP_ATOMIC)))
			return 0;

		/*
		 * The push leaves us with a ddephdr not an shdr, and
		 * handily the port bytes in the right place preset.
		 */
		ddp = FUNC7(skb, sizeof(*ddp) - 4);

		/* Now fill in the long header */

		/*
		 * These two first. The mac overlays the new source/dest
		 * network information so we MUST copy these before
		 * we write the network numbers !
		 */

		ddp->deh_dnode = FUNC6(skb)[0];     /* From physical header */
		ddp->deh_snode = FUNC6(skb)[1];     /* From physical header */

		ddp->deh_dnet  = ap->s_net;	/* Network number */
		ddp->deh_snet  = ap->s_net;
		ddp->deh_sum   = 0;		/* No checksum */
		/*
		 * Not sure about this bit...
		 */
		/* Non routable, so force a drop if we slip up later */
		ddp->deh_len_hops = FUNC3(skb->len + (DDP_MAXHOPS << 10));
	}
	FUNC8(skb);

	return FUNC1(skb, dev, pt, orig_dev);
freeit:
	FUNC4(skb);
	return 0;
}