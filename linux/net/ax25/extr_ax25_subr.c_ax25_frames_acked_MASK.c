#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_3__ {unsigned short va; int modulus; int /*<<< orphan*/  ack_queue; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(ax25_cb *ax25, unsigned short nr)
{
	struct sk_buff *skb;

	/*
	 * Remove all the ack-ed frames from the ack queue.
	 */
	if (ax25->va != nr) {
		while (FUNC2(&ax25->ack_queue) != NULL && ax25->va != nr) {
			skb = FUNC1(&ax25->ack_queue);
			FUNC0(skb);
			ax25->va = (ax25->va + 1) % ax25->modulus;
		}
	}
}