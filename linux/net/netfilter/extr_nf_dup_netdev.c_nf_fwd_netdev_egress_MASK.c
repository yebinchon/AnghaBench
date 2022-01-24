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
struct nft_pktinfo {int /*<<< orphan*/  skb; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nft_pktinfo const*) ; 

void FUNC4(const struct nft_pktinfo *pkt, int oif)
{
	struct net_device *dev;

	dev = FUNC0(FUNC3(pkt), oif);
	if (!dev) {
		FUNC1(pkt->skb);
		return;
	}

	FUNC2(pkt->skb, dev);
}