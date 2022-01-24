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
struct sock {int dummy; } ;
struct ccid2_seq {scalar_t__ ccid2s_sent; } ;
struct ccid2_hc_tx_sock {unsigned int tx_cwnd; int /*<<< orphan*/  tx_ssthresh; scalar_t__ tx_last_cong; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct ccid2_hc_tx_sock* FUNC1 (struct sock*) ; 
 scalar_t__ ccid2_jiffies32 ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, struct ccid2_seq *seqp)
{
	struct ccid2_hc_tx_sock *hc = FUNC1(sk);

	if ((s32)(seqp->ccid2s_sent - hc->tx_last_cong) < 0) {
		FUNC2("Multiple losses in an RTT---treating as one\n");
		return;
	}

	hc->tx_last_cong = ccid2_jiffies32;

	hc->tx_cwnd      = hc->tx_cwnd / 2 ? : 1U;
	hc->tx_ssthresh  = FUNC3(hc->tx_cwnd, 2U);

	FUNC0(sk);
}