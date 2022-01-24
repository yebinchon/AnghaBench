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
struct sk_buff {int dummy; } ;
struct nft_pktinfo {int /*<<< orphan*/  skb; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_pktinfo const*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(const struct nft_pktinfo *pkt, int oif)
{
	struct net_device *dev;
	struct sk_buff *skb;

	dev = FUNC0(FUNC2(pkt), oif);
	if (dev == NULL)
		return;

	skb = FUNC3(pkt->skb, GFP_ATOMIC);
	if (skb)
		FUNC1(skb, dev);
}