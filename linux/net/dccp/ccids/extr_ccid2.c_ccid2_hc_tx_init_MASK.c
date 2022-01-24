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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_l_ack_ratio; int /*<<< orphan*/  dccps_mss_cache; } ;
struct ccid2_hc_tx_sock {unsigned int tx_ssthresh; int tx_rpdupack; int /*<<< orphan*/  tx_av_chunks; int /*<<< orphan*/  tx_rtotimer; struct sock* sk; scalar_t__ tx_cwnd_used; int /*<<< orphan*/  tx_cwnd_stamp; int /*<<< orphan*/  tx_lsndtime; int /*<<< orphan*/  tx_last_cong; int /*<<< orphan*/  tx_rto; int /*<<< orphan*/  tx_cwnd; int /*<<< orphan*/  tx_expected_wnd; } ;
struct ccid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCP_TIMEOUT_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ccid2_hc_tx_sock*) ; 
 int /*<<< orphan*/  ccid2_hc_tx_rto_expire ; 
 int /*<<< orphan*/  ccid2_jiffies32 ; 
 struct ccid2_hc_tx_sock* FUNC3 (struct ccid*) ; 
 struct dccp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ccid *ccid, struct sock *sk)
{
	struct ccid2_hc_tx_sock *hc = FUNC3(ccid);
	struct dccp_sock *dp = FUNC4(sk);
	u32 max_ratio;

	/* RFC 4341, 5: initialise ssthresh to arbitrarily high (max) value */
	hc->tx_ssthresh = ~0U;

	/* Use larger initial windows (RFC 4341, section 5). */
	hc->tx_cwnd = FUNC5(dp->dccps_mss_cache);
	hc->tx_expected_wnd = hc->tx_cwnd;

	/* Make sure that Ack Ratio is enabled and within bounds. */
	max_ratio = FUNC0(hc->tx_cwnd, 2);
	if (dp->dccps_l_ack_ratio == 0 || dp->dccps_l_ack_ratio > max_ratio)
		dp->dccps_l_ack_ratio = max_ratio;

	/* XXX init ~ to window size... */
	if (FUNC2(hc))
		return -ENOMEM;

	hc->tx_rto	 = DCCP_TIMEOUT_INIT;
	hc->tx_rpdupack  = -1;
	hc->tx_last_cong = hc->tx_lsndtime = hc->tx_cwnd_stamp = ccid2_jiffies32;
	hc->tx_cwnd_used = 0;
	hc->sk		 = sk;
	FUNC6(&hc->tx_rtotimer, ccid2_hc_tx_rto_expire, 0);
	FUNC1(&hc->tx_av_chunks);
	return 0;
}