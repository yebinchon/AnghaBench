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
struct sock {int sk_state; } ;
struct ccid3_hc_tx_sock {scalar_t__ tx_state; int tx_t_rto; scalar_t__ tx_p; int tx_x; int tx_x_calc; int tx_x_recv; int tx_t_ipi; int /*<<< orphan*/  tx_no_feedback_timer; scalar_t__ tx_s; struct sock* sk; } ;
typedef  int __u64 ;

/* Variables and functions */
 int DCCPF_OPEN ; 
 int DCCPF_PARTOPEN ; 
 unsigned long TFRC_INITIAL_TIMEOUT ; 
 scalar_t__ TFRC_SSTATE_FBACK ; 
 int /*<<< orphan*/  TFRC_SSTATE_NO_FBACK ; 
 int TFRC_T_MBI ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ccid3_hc_tx_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct ccid3_hc_tx_sock* FUNC8 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct ccid3_hc_tx_sock* hc ; 
 scalar_t__ jiffies ; 
 void* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  tx_no_feedback_timer ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (unsigned long) ; 

__attribute__((used)) static void FUNC15(struct timer_list *t)
{
	struct ccid3_hc_tx_sock *hc = FUNC8(hc, t, tx_no_feedback_timer);
	struct sock *sk = hc->sk;
	unsigned long t_nfb = USEC_PER_SEC / 5;

	FUNC0(sk);
	if (FUNC11(sk)) {
		/* Try again later. */
		/* XXX: set some sensible MIB */
		goto restart_timer;
	}

	FUNC4("%s(%p, state=%s) - entry\n", FUNC7(sk), sk,
		       FUNC5(hc->tx_state));

	/* Ignore and do not restart after leaving the established state */
	if ((1 << sk->sk_state) & ~(DCCPF_OPEN | DCCPF_PARTOPEN))
		goto out;

	/* Reset feedback state to "no feedback received" */
	if (hc->tx_state == TFRC_SSTATE_FBACK)
		FUNC2(sk, TFRC_SSTATE_NO_FBACK);

	/*
	 * Determine new allowed sending rate X as per draft rfc3448bis-00, 4.4
	 * RTO is 0 if and only if no feedback has been received yet.
	 */
	if (hc->tx_t_rto == 0 || hc->tx_p == 0) {

		/* halve send rate directly */
		hc->tx_x = FUNC9(hc->tx_x / 2,
			       (((__u64)hc->tx_s) << 6) / TFRC_T_MBI);
		FUNC6(hc);
	} else {
		/*
		 *  Modify the cached value of X_recv
		 *
		 *  If (X_calc > 2 * X_recv)
		 *    X_recv = max(X_recv / 2, s / (2 * t_mbi));
		 *  Else
		 *    X_recv = X_calc / 4;
		 *
		 *  Note that X_recv is scaled by 2^6 while X_calc is not
		 */
		if (hc->tx_x_calc > (hc->tx_x_recv >> 5))
			hc->tx_x_recv =
				FUNC9(hc->tx_x_recv / 2,
				    (((__u64)hc->tx_s) << 6) / (2*TFRC_T_MBI));
		else {
			hc->tx_x_recv = hc->tx_x_calc;
			hc->tx_x_recv <<= 4;
		}
		FUNC3(sk, NULL);
	}
	FUNC4("Reduced X to %llu/64 bytes/sec\n",
			(unsigned long long)hc->tx_x);

	/*
	 * Set new timeout for the nofeedback timer.
	 * See comments in packet_recv() regarding the value of t_RTO.
	 */
	if (FUNC13(hc->tx_t_rto == 0))	/* no feedback received yet */
		t_nfb = TFRC_INITIAL_TIMEOUT;
	else
		t_nfb = FUNC9(hc->tx_t_rto, 2 * hc->tx_t_ipi);

restart_timer:
	FUNC10(sk, &hc->tx_no_feedback_timer,
			   jiffies + FUNC14(t_nfb));
out:
	FUNC1(sk);
	FUNC12(sk);
}