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
struct tcp_sock {int total_retrans; int snd_cwnd; int /*<<< orphan*/  snd_cwnd_stamp; scalar_t__ undo_marker; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_af_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rebuild_header ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int FUNC6 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  tcp_jiffies32 ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 

void FUNC10(struct sock *sk, int bpf_op)
{
	struct inet_connection_sock *icsk = FUNC1(sk);
	struct tcp_sock *tp = FUNC9(sk);

	FUNC8(sk);
	icsk->icsk_af_ops->rebuild_header(sk);
	FUNC7(sk);

	/* Initialize the congestion window to start the transfer.
	 * Cut cwnd down to 1 per RFC5681 if SYN or SYN-ACK has been
	 * retransmitted. In light of RFC6298 more aggressive 1sec
	 * initRTO, we only reset cwnd when more than 1 SYN/SYN-ACK
	 * retransmission has occurred.
	 */
	if (tp->total_retrans > 1 && tp->undo_marker)
		tp->snd_cwnd = 1;
	else
		tp->snd_cwnd = FUNC6(tp, FUNC0(sk));
	tp->snd_cwnd_stamp = tcp_jiffies32;

	FUNC3(sk, bpf_op, 0, NULL);
	FUNC5(sk);
	FUNC4(sk);
}