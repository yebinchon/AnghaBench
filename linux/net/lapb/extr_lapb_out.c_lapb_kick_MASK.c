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
struct sk_buff {scalar_t__ sk; } ;
struct lapb_cb {int mode; unsigned short va; unsigned short vs; unsigned short window; int condition; int /*<<< orphan*/  ack_queue; int /*<<< orphan*/  write_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int LAPB_ACK_PENDING_CONDITION ; 
 unsigned short LAPB_EMODULUS ; 
 int LAPB_EXTENDED ; 
 int LAPB_PEER_RX_BUSY_CONDITION ; 
 int /*<<< orphan*/  LAPB_POLLOFF ; 
 unsigned short LAPB_SMODULUS ; 
 int /*<<< orphan*/  FUNC0 (struct lapb_cb*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct lapb_cb*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 

void FUNC9(struct lapb_cb *lapb)
{
	struct sk_buff *skb, *skbn;
	unsigned short modulus, start, end;

	modulus = (lapb->mode & LAPB_EXTENDED) ? LAPB_EMODULUS : LAPB_SMODULUS;
	start = !FUNC5(&lapb->ack_queue) ? lapb->va : lapb->vs;
	end   = (lapb->va + lapb->window) % modulus;

	if (!(lapb->condition & LAPB_PEER_RX_BUSY_CONDITION) &&
	    start != end && FUNC5(&lapb->write_queue)) {
		lapb->vs = start;

		/*
		 * Dequeue the frame and copy it.
		 */
		skb = FUNC4(&lapb->write_queue);

		do {
			if ((skbn = FUNC3(skb, GFP_ATOMIC)) == NULL) {
				FUNC6(&lapb->write_queue, skb);
				break;
			}

			if (skb->sk)
				FUNC8(skbn, skb->sk);

			/*
			 * Transmit the frame copy.
			 */
			FUNC0(lapb, skbn, LAPB_POLLOFF);

			lapb->vs = (lapb->vs + 1) % modulus;

			/*
			 * Requeue the original data frame.
			 */
			FUNC7(&lapb->ack_queue, skb);

		} while (lapb->vs != end && (skb = FUNC4(&lapb->write_queue)) != NULL);

		lapb->condition &= ~LAPB_ACK_PENDING_CONDITION;

		if (!FUNC2(lapb))
			FUNC1(lapb);
	}
}