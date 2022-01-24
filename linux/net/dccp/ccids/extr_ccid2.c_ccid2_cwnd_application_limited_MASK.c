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
typedef  int u32 ;
struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {int tx_cwnd; int tx_cwnd_stamp; void* tx_cwnd_used; void* tx_ssthresh; } ;
struct TYPE_2__ {int /*<<< orphan*/  dccps_mss_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct ccid2_hc_tx_sock* FUNC1 (struct sock*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 void* FUNC3 (void*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, const u32 now)
{
	struct ccid2_hc_tx_sock *hc = FUNC1(sk);
	/* don't reduce cwnd below the initial window (IW) */
	u32 init_win = FUNC4(FUNC2(sk)->dccps_mss_cache),
	    win_used = FUNC3(hc->tx_cwnd_used, init_win);

	if (win_used < hc->tx_cwnd) {
		hc->tx_ssthresh = FUNC3(hc->tx_ssthresh,
				     (hc->tx_cwnd >> 1) + (hc->tx_cwnd >> 2));
		hc->tx_cwnd = (hc->tx_cwnd + win_used) >> 1;
	}
	hc->tx_cwnd_used  = 0;
	hc->tx_cwnd_stamp = now;

	FUNC0(sk);
}