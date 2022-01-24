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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct nr_sock {scalar_t__ state; int condition; unsigned short va; unsigned short vs; int window; int /*<<< orphan*/  vr; int /*<<< orphan*/  vl; int /*<<< orphan*/  ack_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NR_COND_ACK_PENDING ; 
 int NR_COND_PEER_RX_BUSY ; 
 int NR_MODULUS ; 
 scalar_t__ NR_STATE_3 ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 struct nr_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct sock*) ; 

void FUNC10(struct sock *sk)
{
	struct nr_sock *nr = FUNC1(sk);
	struct sk_buff *skb, *skbn;
	unsigned short start, end;

	if (nr->state != NR_STATE_3)
		return;

	if (nr->condition & NR_COND_PEER_RX_BUSY)
		return;

	if (!FUNC6(&sk->sk_write_queue))
		return;

	start = (FUNC6(&nr->ack_queue) == NULL) ? nr->va : nr->vs;
	end   = (nr->va + nr->window) % NR_MODULUS;

	if (start == end)
		return;

	nr->vs = start;

	/*
	 * Transmit data until either we're out of data to send or
	 * the window is full.
	 */

	/*
	 * Dequeue the frame and copy it.
	 */
	skb = FUNC5(&sk->sk_write_queue);

	do {
		if ((skbn = FUNC4(skb, GFP_ATOMIC)) == NULL) {
			FUNC7(&sk->sk_write_queue, skb);
			break;
		}

		FUNC9(skbn, sk);

		/*
		 * Transmit the frame copy.
		 */
		FUNC0(sk, skbn);

		nr->vs = (nr->vs + 1) % NR_MODULUS;

		/*
		 * Requeue the original data frame.
		 */
		FUNC8(&nr->ack_queue, skb);

	} while (nr->vs != end &&
		 (skb = FUNC5(&sk->sk_write_queue)) != NULL);

	nr->vl         = nr->vr;
	nr->condition &= ~NR_COND_ACK_PENDING;

	if (!FUNC3(sk))
		FUNC2(sk);
}