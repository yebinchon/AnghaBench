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
typedef  unsigned int u32 ;
struct tcp_sock {unsigned int lost; unsigned int delivered; int /*<<< orphan*/  delivered_mstamp; } ;
struct sock {int dummy; } ;
struct rate_sample {int /*<<< orphan*/  losses; scalar_t__ is_app_limited; } ;
struct bbr {scalar_t__ mode; scalar_t__ lt_rtt_cnt; int lt_is_sampling; unsigned int lt_last_lost; unsigned int lt_last_delivered; unsigned int lt_last_stamp; scalar_t__ round_start; scalar_t__ lt_use_bw; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ BBR_PROBE_BW ; 
 unsigned int BBR_SCALE ; 
 int BW_UNIT ; 
 unsigned int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int) ; 
 scalar_t__ bbr_lt_bw_max_rtts ; 
 int bbr_lt_intvl_min_rtts ; 
 unsigned int bbr_lt_loss_thresh ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int) ; 
 struct bbr* FUNC6 (struct sock*) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, const struct rate_sample *rs)
{
	struct tcp_sock *tp = FUNC7(sk);
	struct bbr *bbr = FUNC6(sk);
	u32 lost, delivered;
	u64 bw;
	u32 t;

	if (bbr->lt_use_bw) {	/* already using long-term rate, lt_bw? */
		if (bbr->mode == BBR_PROBE_BW && bbr->round_start &&
		    ++bbr->lt_rtt_cnt >= bbr_lt_bw_max_rtts) {
			FUNC1(sk);    /* stop using lt_bw */
			FUNC3(sk);  /* restart gain cycling */
		}
		return;
	}

	/* Wait for the first loss before sampling, to let the policer exhaust
	 * its tokens and estimate the steady-state rate allowed by the policer.
	 * Starting samples earlier includes bursts that over-estimate the bw.
	 */
	if (!bbr->lt_is_sampling) {
		if (!rs->losses)
			return;
		FUNC2(sk);
		bbr->lt_is_sampling = true;
	}

	/* To avoid underestimates, reset sampling if we run out of data. */
	if (rs->is_app_limited) {
		FUNC1(sk);
		return;
	}

	if (bbr->round_start)
		bbr->lt_rtt_cnt++;	/* count round trips in this interval */
	if (bbr->lt_rtt_cnt < bbr_lt_intvl_min_rtts)
		return;		/* sampling interval needs to be longer */
	if (bbr->lt_rtt_cnt > 4 * bbr_lt_intvl_min_rtts) {
		FUNC1(sk);  /* interval is too long */
		return;
	}

	/* End sampling interval when a packet is lost, so we estimate the
	 * policer tokens were exhausted. Stopping the sampling before the
	 * tokens are exhausted under-estimates the policed rate.
	 */
	if (!rs->losses)
		return;

	/* Calculate packets lost and delivered in sampling interval. */
	lost = tp->lost - bbr->lt_last_lost;
	delivered = tp->delivered - bbr->lt_last_delivered;
	/* Is loss rate (lost/delivered) >= lt_loss_thresh? If not, wait. */
	if (!delivered || (lost << BBR_SCALE) < bbr_lt_loss_thresh * delivered)
		return;

	/* Find average delivery rate in this sampling interval. */
	t = FUNC4(tp->delivered_mstamp, USEC_PER_MSEC) - bbr->lt_last_stamp;
	if ((s32)t < 1)
		return;		/* interval is less than one ms, so wait */
	/* Check if can multiply without overflow */
	if (t >= ~0U / USEC_PER_MSEC) {
		FUNC1(sk);  /* interval too long; reset */
		return;
	}
	t *= USEC_PER_MSEC;
	bw = (u64)delivered * BW_UNIT;
	FUNC5(bw, t);
	FUNC0(sk, bw);
}