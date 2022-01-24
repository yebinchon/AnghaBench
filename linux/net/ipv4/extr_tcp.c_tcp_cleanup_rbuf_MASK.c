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
struct tcp_sock {scalar_t__ rcv_nxt; scalar_t__ rcv_wup; int window_clamp; int /*<<< orphan*/  copied_seq; } ;
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ rcv_mss; int pending; scalar_t__ blocked; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;
typedef  int __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 int ICSK_ACK_PUSHED ; 
 int ICSK_ACK_PUSHED2 ; 
 int RCV_SHUTDOWN ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 struct tcp_sock* FUNC11 (struct sock*) ; 

__attribute__((used)) static void FUNC12(struct sock *sk, int copied)
{
	struct tcp_sock *tp = FUNC11(sk);
	bool time_to_ack = false;

	struct sk_buff *skb = FUNC8(&sk->sk_receive_queue);

	FUNC1(skb && !FUNC4(tp->copied_seq, FUNC0(skb)->end_seq),
	     "cleanup rbuf bug: copied %X seq %X rcvnxt %X\n",
	     tp->copied_seq, FUNC0(skb)->end_seq, tp->rcv_nxt);

	if (FUNC6(sk)) {
		const struct inet_connection_sock *icsk = FUNC5(sk);
		   /* Delayed ACKs frequently hit locked sockets during bulk
		    * receive. */
		if (icsk->icsk_ack.blocked ||
		    /* Once-per-two-segments ACK was not sent by tcp_input.c */
		    tp->rcv_nxt - tp->rcv_wup > icsk->icsk_ack.rcv_mss ||
		    /*
		     * If this read emptied read buffer, we send ACK, if
		     * connection is not bidirectional, user drained
		     * receive buffer and there was a small segment
		     * in queue.
		     */
		    (copied > 0 &&
		     ((icsk->icsk_ack.pending & ICSK_ACK_PUSHED2) ||
		      ((icsk->icsk_ack.pending & ICSK_ACK_PUSHED) &&
		       !FUNC7(sk))) &&
		      !FUNC3(&sk->sk_rmem_alloc)))
			time_to_ack = true;
	}

	/* We send an ACK if we can now advertise a non-zero window
	 * which has been raised "significantly".
	 *
	 * Even if window raised up to infinity, do not send window open ACK
	 * in states, where we will not receive more. It is useless.
	 */
	if (copied > 0 && !time_to_ack && !(sk->sk_shutdown & RCV_SHUTDOWN)) {
		__u32 rcv_window_now = FUNC9(tp);

		/* Optimize, __tcp_select_window() is not cheap. */
		if (2*rcv_window_now <= tp->window_clamp) {
			__u32 new_window = FUNC2(sk);

			/* Send ACK now, if this read freed lots of space
			 * in our buffer. Certainly, new_window is new window.
			 * We can advertise it now, if it is not less than current one.
			 * "Lots" means "at least twice" here.
			 */
			if (new_window && new_window >= 2 * rcv_window_now)
				time_to_ack = true;
		}
	}
	if (time_to_ack)
		FUNC10(sk);
}