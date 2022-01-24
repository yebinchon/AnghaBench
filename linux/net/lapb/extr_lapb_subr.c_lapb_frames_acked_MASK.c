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
struct lapb_cb {int mode; unsigned short va; int /*<<< orphan*/  ack_queue; } ;

/* Variables and functions */
 int LAPB_EMODULUS ; 
 int LAPB_EXTENDED ; 
 int LAPB_SMODULUS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct lapb_cb *lapb, unsigned short nr)
{
	struct sk_buff *skb;
	int modulus;

	modulus = (lapb->mode & LAPB_EXTENDED) ? LAPB_EMODULUS : LAPB_SMODULUS;

	/*
	 * Remove all the ack-ed frames from the ack queue.
	 */
	if (lapb->va != nr)
		while (FUNC2(&lapb->ack_queue) && lapb->va != nr) {
			skb = FUNC1(&lapb->ack_queue);
			FUNC0(skb);
			lapb->va = (lapb->va + 1) % modulus;
		}
}