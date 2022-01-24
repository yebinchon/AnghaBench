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
struct rfcomm_dlc {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  addr; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RFCOMM_TX_THROTTLED ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct rfcomm_dlc *d, struct sk_buff *skb)
{
	int len = skb->len;

	FUNC0("dlc %p mtu %d len %d", d, d->mtu, len);

	FUNC1(skb, d->addr);
	FUNC3(&d->tx_queue, skb);

	if (d->state == BT_CONNECTED &&
	    !FUNC4(RFCOMM_TX_THROTTLED, &d->flags))
		FUNC2();
}