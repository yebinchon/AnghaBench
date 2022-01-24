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
struct ccid2_hc_tx_sock {int tx_cwnd; int const tx_lsndtime; int tx_ssthresh; scalar_t__ tx_rto; int tx_cwnd_stamp; scalar_t__ tx_cwnd_used; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  dccps_mss_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct ccid2_hc_tx_sock* FUNC1 (struct sock*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 void* FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, const u32 now)
{
	struct ccid2_hc_tx_sock *hc = FUNC1(sk);
	u32 cwnd = hc->tx_cwnd, restart_cwnd,
	    iwnd = FUNC5(FUNC2(sk)->dccps_mss_cache);
	s32 delta = now - hc->tx_lsndtime;

	hc->tx_ssthresh = FUNC3(hc->tx_ssthresh, (cwnd >> 1) + (cwnd >> 2));

	/* don't reduce cwnd below the initial window (IW) */
	restart_cwnd = FUNC4(cwnd, iwnd);

	while ((delta -= hc->tx_rto) >= 0 && cwnd > restart_cwnd)
		cwnd >>= 1;
	hc->tx_cwnd = FUNC3(cwnd, restart_cwnd);
	hc->tx_cwnd_stamp = now;
	hc->tx_cwnd_used  = 0;

	FUNC0(sk);
}