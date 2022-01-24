#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int winsize_out; } ;
struct x25_sock {scalar_t__ state; int condition; unsigned short vs; unsigned short va; int /*<<< orphan*/  vr; int /*<<< orphan*/  vl; int /*<<< orphan*/  ack_queue; TYPE_1__ facilities; TYPE_2__* neighbour; int /*<<< orphan*/  interrupt_out_queue; int /*<<< orphan*/  flags; } ;
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ extended; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int X25_COND_ACK_PENDING ; 
 int X25_COND_PEER_RX_BUSY ; 
 int X25_EMODULUS ; 
 int /*<<< orphan*/  X25_INTERRUPT_FLAG ; 
 int X25_SMODULUS ; 
 scalar_t__ X25_STATE_3 ; 
 struct sk_buff* FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 struct x25_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,TYPE_2__*) ; 

void FUNC11(struct sock *sk)
{
	struct sk_buff *skb, *skbn;
	unsigned short start, end;
	int modulus;
	struct x25_sock *x25 = FUNC8(sk);

	if (x25->state != X25_STATE_3)
		return;

	/*
	 *	Transmit interrupt data.
	 */
	if (FUNC2(&x25->interrupt_out_queue) != NULL &&
		!FUNC6(X25_INTERRUPT_FLAG, &x25->flags)) {

		skb = FUNC1(&x25->interrupt_out_queue);
		FUNC10(skb, x25->neighbour);
	}

	if (x25->condition & X25_COND_PEER_RX_BUSY)
		return;

	if (!FUNC2(&sk->sk_write_queue))
		return;

	modulus = x25->neighbour->extended ? X25_EMODULUS : X25_SMODULUS;

	start   = FUNC2(&x25->ack_queue) ? x25->vs : x25->va;
	end     = (x25->va + x25->facilities.winsize_out) % modulus;

	if (start == end)
		return;

	x25->vs = start;

	/*
	 * Transmit data until either we're out of data to send or
	 * the window is full.
	 */

	skb = FUNC1(&sk->sk_write_queue);

	do {
		if ((skbn = FUNC0(skb, GFP_ATOMIC)) == NULL) {
			FUNC3(&sk->sk_write_queue, skb);
			break;
		}

		FUNC5(skbn, sk);

		/*
		 * Transmit the frame copy.
		 */
		FUNC7(sk, skbn);

		x25->vs = (x25->vs + 1) % modulus;

		/*
		 * Requeue the original data frame.
		 */
		FUNC4(&x25->ack_queue, skb);

	} while (x25->vs != end &&
		 (skb = FUNC1(&sk->sk_write_queue)) != NULL);

	x25->vl         = x25->vr;
	x25->condition &= ~X25_COND_ACK_PENDING;

	FUNC9(sk);
}