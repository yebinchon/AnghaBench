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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct tipc_bearer {TYPE_1__ pt; int /*<<< orphan*/  up; } ;
struct sk_buff {scalar_t__ pkt_type; } ;
struct packet_type {int dummy; } ;
struct net_device {int /*<<< orphan*/  tipc_ptr; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 scalar_t__ PACKET_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct tipc_bearer* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sk_buff*,struct tipc_bearer*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev,
			   struct packet_type *pt, struct net_device *orig_dev)
{
	struct tipc_bearer *b;

	FUNC4();
	b = FUNC3(dev->tipc_ptr) ?:
		FUNC3(orig_dev->tipc_ptr);
	if (FUNC2(b && FUNC7(0, &b->up) &&
		   (skb->pkt_type <= PACKET_MULTICAST))) {
		FUNC6(skb);
		FUNC8(FUNC0(b->pt.dev), skb, b);
		FUNC5();
		return NET_RX_SUCCESS;
	}
	FUNC5();
	FUNC1(skb);
	return NET_RX_DROP;
}