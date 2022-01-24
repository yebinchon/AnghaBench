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
struct rose_sock {scalar_t__ state; int condition; unsigned short va; unsigned short vs; int /*<<< orphan*/  vr; int /*<<< orphan*/  vl; int /*<<< orphan*/  ack_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int ROSE_COND_ACK_PENDING ; 
 int ROSE_COND_PEER_RX_BUSY ; 
 int ROSE_MODULUS ; 
 scalar_t__ ROSE_STATE_3 ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 struct rose_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sock*) ; 
 int sysctl_rose_window_size ; 

void FUNC9(struct sock *sk)
{
	struct rose_sock *rose = FUNC1(sk);
	struct sk_buff *skb, *skbn;
	unsigned short start, end;

	if (rose->state != ROSE_STATE_3)
		return;

	if (rose->condition & ROSE_COND_PEER_RX_BUSY)
		return;

	if (!FUNC5(&sk->sk_write_queue))
		return;

	start = (FUNC5(&rose->ack_queue) == NULL) ? rose->va : rose->vs;
	end   = (rose->va + sysctl_rose_window_size) % ROSE_MODULUS;

	if (start == end)
		return;

	rose->vs = start;

	/*
	 * Transmit data until either we're out of data to send or
	 * the window is full.
	 */

	skb  = FUNC4(&sk->sk_write_queue);

	do {
		if ((skbn = FUNC3(skb, GFP_ATOMIC)) == NULL) {
			FUNC6(&sk->sk_write_queue, skb);
			break;
		}

		FUNC8(skbn, sk);

		/*
		 * Transmit the frame copy.
		 */
		FUNC0(sk, skbn);

		rose->vs = (rose->vs + 1) % ROSE_MODULUS;

		/*
		 * Requeue the original data frame.
		 */
		FUNC7(&rose->ack_queue, skb);

	} while (rose->vs != end &&
		 (skb = FUNC4(&sk->sk_write_queue)) != NULL);

	rose->vl         = rose->vr;
	rose->condition &= ~ROSE_COND_ACK_PENDING;

	FUNC2(sk);
}