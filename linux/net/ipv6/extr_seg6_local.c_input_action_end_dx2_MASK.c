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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; struct net_device* dev; scalar_t__ data; } ;
struct seg6_local_lwt {int /*<<< orphan*/  oif; } ;
struct net_device {scalar_t__ type; int flags; scalar_t__ mtu; } ;
struct net {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EINVAL ; 
 scalar_t__ ETH_HLEN ; 
 int IFF_UP ; 
 int /*<<< orphan*/  NEXTHDR_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb,
				struct seg6_local_lwt *slwt)
{
	struct net *net = FUNC2(skb->dev);
	struct net_device *odev;
	struct ethhdr *eth;

	if (!FUNC0(skb, NEXTHDR_NONE))
		goto drop;

	if (!FUNC7(skb, ETH_HLEN))
		goto drop;

	FUNC10(skb);
	eth = (struct ethhdr *)skb->data;

	/* To determine the frame's protocol, we assume it is 802.3. This avoids
	 * a call to eth_type_trans(), which is not really relevant for our
	 * use case.
	 */
	if (!FUNC4(eth->h_proto))
		goto drop;

	odev = FUNC1(net, slwt->oif);
	if (!odev)
		goto drop;

	/* As we accept Ethernet frames, make sure the egress device is of
	 * the correct type.
	 */
	if (odev->type != ARPHRD_ETHER)
		goto drop;

	if (!(odev->flags & IFF_UP) || !FUNC6(odev))
		goto drop;

	FUNC9(skb);

	if (FUNC11(skb))
		goto drop;

	FUNC8(skb);

	if (skb->len - ETH_HLEN > odev->mtu)
		goto drop;

	skb->dev = odev;
	skb->protocol = eth->h_proto;

	return FUNC3(skb);

drop:
	FUNC5(skb);
	return -EINVAL;
}