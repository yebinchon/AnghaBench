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
typedef  int u64 ;
struct tcp_sock {int /*<<< orphan*/  delivered; } ;
struct sock {int dummy; } ;
struct rate_sample {scalar_t__ delivered; int /*<<< orphan*/  is_app_limited; int /*<<< orphan*/  interval_us; int /*<<< orphan*/  prior_delivered; } ;
struct bbr {int round_start; int /*<<< orphan*/  rtt_cnt; int /*<<< orphan*/  bw; scalar_t__ packet_conservation; int /*<<< orphan*/  next_rtt_delivered; } ;

/* Variables and functions */
 int BW_UNIT ; 
 int /*<<< orphan*/  bbr_bw_rtts ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct rate_sample const*) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct bbr* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, const struct rate_sample *rs)
{
	struct tcp_sock *tp = FUNC6(sk);
	struct bbr *bbr = FUNC4(sk);
	u64 bw;

	bbr->round_start = 0;
	if (rs->delivered < 0 || rs->interval_us <= 0)
		return; /* Not a valid observation */

	/* See if we've reached the next RTT */
	if (!FUNC2(rs->prior_delivered, bbr->next_rtt_delivered)) {
		bbr->next_rtt_delivered = tp->delivered;
		bbr->rtt_cnt++;
		bbr->round_start = 1;
		bbr->packet_conservation = 0;
	}

	FUNC0(sk, rs);

	/* Divide delivered by the interval to find a (lower bound) bottleneck
	 * bandwidth sample. Delivered is in packets and interval_us in uS and
	 * ratio will be <<1 for most connections. So delivered is first scaled.
	 */
	bw = (u64)rs->delivered * BW_UNIT;
	FUNC3(bw, rs->interval_us);

	/* If this sample is application-limited, it is likely to have a very
	 * low delivered count that represents application behavior rather than
	 * the available network rate. Such a sample could drag down estimated
	 * bw, causing needless slow-down. Thus, to continue to send at the
	 * last measured network rate, we filter out app-limited samples unless
	 * they describe the path bw at least as well as our bw model.
	 *
	 * So the goal during app-limited phase is to proceed with the best
	 * network rate no matter how long. We automatically leave this
	 * phase when app writes faster than the network can deliver :)
	 */
	if (!rs->is_app_limited || bw >= FUNC1(sk)) {
		/* Incorporate new sample into our max bw filter. */
		FUNC5(&bbr->bw, bbr_bw_rtts, bbr->rtt_cnt, bw);
	}
}