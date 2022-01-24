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
struct timer_list {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct ccid2_hc_tx_sock {int tx_rto; int tx_ssthresh; int tx_cwnd; int tx_rpdupack; int /*<<< orphan*/  tx_rtotimer; scalar_t__ tx_rpseq; scalar_t__ tx_packets_acked; int /*<<< orphan*/  tx_seqh; int /*<<< orphan*/  tx_seqt; scalar_t__ tx_pipe; struct sock* sk; } ;

/* Variables and functions */
 scalar_t__ DCCP_CLOSED ; 
 int DCCP_RTO_MAX ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 int FUNC3 (struct ccid2_hc_tx_sock*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct ccid2_hc_tx_sock* FUNC6 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct ccid2_hc_tx_sock* hc ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  tx_rtotimer ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct ccid2_hc_tx_sock *hc = FUNC6(hc, t, tx_rtotimer);
	struct sock *sk = hc->sk;
	const bool sender_was_blocked = FUNC3(hc);

	FUNC0(sk);
	if (FUNC8(sk)) {
		FUNC7(sk, &hc->tx_rtotimer, jiffies + HZ / 5);
		goto out;
	}

	FUNC4("RTO_EXPIRE\n");

	if (sk->sk_state == DCCP_CLOSED)
		goto out;

	/* back-off timer */
	hc->tx_rto <<= 1;
	if (hc->tx_rto > DCCP_RTO_MAX)
		hc->tx_rto = DCCP_RTO_MAX;

	/* adjust pipe, cwnd etc */
	hc->tx_ssthresh = hc->tx_cwnd / 2;
	if (hc->tx_ssthresh < 2)
		hc->tx_ssthresh = 2;
	hc->tx_cwnd	= 1;
	hc->tx_pipe	= 0;

	/* clear state about stuff we sent */
	hc->tx_seqt = hc->tx_seqh;
	hc->tx_packets_acked = 0;

	/* clear ack ratio state. */
	hc->tx_rpseq    = 0;
	hc->tx_rpdupack = -1;
	FUNC2(sk, 1);

	/* if we were blocked before, we may now send cwnd=1 packet */
	if (sender_was_blocked)
		FUNC5(sk);
	/* restart backed-off timer */
	FUNC7(sk, &hc->tx_rtotimer, jiffies + hc->tx_rto);
out:
	FUNC1(sk);
	FUNC9(sk);
}