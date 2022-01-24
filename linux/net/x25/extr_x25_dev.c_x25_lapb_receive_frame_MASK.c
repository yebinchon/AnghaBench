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
struct x25_neigh {int dummy; } ;
struct sk_buff {int* data; } ;
struct packet_type {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  X25_IFACE_CONNECT 130 
#define  X25_IFACE_DATA 129 
#define  X25_IFACE_DISCONNECT 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 struct x25_neigh* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC9 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC10 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct x25_neigh*) ; 

int FUNC12(struct sk_buff *skb, struct net_device *dev,
			   struct packet_type *ptype, struct net_device *orig_dev)
{
	struct sk_buff *nskb;
	struct x25_neigh *nb;

	if (!FUNC2(FUNC0(dev), &init_net))
		goto drop;

	nskb = FUNC5(skb, GFP_ATOMIC);
	if (!nskb)
		goto drop;
	FUNC1(skb);
	skb = nskb;

	/*
	 * Packet received from unrecognised device, throw it away.
	 */
	nb = FUNC7(dev);
	if (!nb) {
		FUNC3("unknown neighbour - %s\n", dev->name);
		goto drop;
	}

	if (!FUNC4(skb, 1))
		return 0;

	switch (skb->data[0]) {

	case X25_IFACE_DATA:
		FUNC6(skb, 1);
		if (FUNC11(skb, nb)) {
			FUNC10(nb);
			goto out;
		}
		break;

	case X25_IFACE_CONNECT:
		FUNC8(nb);
		break;

	case X25_IFACE_DISCONNECT:
		FUNC9(nb);
		break;
	}
	FUNC10(nb);
drop:
	FUNC1(skb);
out:
	return 0;
}