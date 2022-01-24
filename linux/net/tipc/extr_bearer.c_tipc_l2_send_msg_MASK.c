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
struct tipc_media_addr {int /*<<< orphan*/  value; } ;
struct tipc_bearer {int /*<<< orphan*/  media_ptr; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; scalar_t__ hard_header_len; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TIPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

int FUNC9(struct net *net, struct sk_buff *skb,
		     struct tipc_bearer *b, struct tipc_media_addr *dest)
{
	struct net_device *dev;
	int delta;

	dev = (struct net_device *)FUNC6(b->media_ptr);
	if (!dev)
		return 0;

	delta = FUNC0(dev->hard_header_len - FUNC7(skb));
	if ((delta > 0) && FUNC5(skb, delta, 0, GFP_ATOMIC)) {
		FUNC4(skb);
		return 0;
	}
	FUNC8(skb);
	skb->dev = dev;
	skb->protocol = FUNC3(ETH_P_TIPC);
	FUNC1(skb, dev, ETH_P_TIPC, dest->value,
			dev->dev_addr, skb->len);
	FUNC2(skb);
	return 0;
}