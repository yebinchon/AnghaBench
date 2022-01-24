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
struct tcp_sock {int /*<<< orphan*/  delivered_mstamp; } ;
struct sock {int dummy; } ;
struct rate_sample {scalar_t__ losses; int /*<<< orphan*/  prior_in_flight; } ;
struct bbr {scalar_t__ min_rtt_us; scalar_t__ pacing_gain; int /*<<< orphan*/  cycle_mstamp; } ;

/* Variables and functions */
 scalar_t__ BBR_UNIT ; 
 scalar_t__ FUNC0 (struct sock*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 struct bbr* FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct sock *sk,
				    const struct rate_sample *rs)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct bbr *bbr = FUNC3(sk);
	bool is_full_length =
		FUNC5(tp->delivered_mstamp, bbr->cycle_mstamp) >
		bbr->min_rtt_us;
	u32 inflight, bw;

	/* The pacing_gain of 1.0 paces at the estimated bw to try to fully
	 * use the pipe without increasing the queue.
	 */
	if (bbr->pacing_gain == BBR_UNIT)
		return is_full_length;		/* just use wall clock time */

	inflight = FUNC2(sk, rs->prior_in_flight);
	bw = FUNC1(sk);

	/* A pacing_gain > 1.0 probes for bw by trying to raise inflight to at
	 * least pacing_gain*BDP; this may take more than min_rtt if min_rtt is
	 * small (e.g. on a LAN). We do not persist if packets are lost, since
	 * a path with small buffers may not hold that much.
	 */
	if (bbr->pacing_gain > BBR_UNIT)
		return is_full_length &&
			(rs->losses ||  /* perhaps pacing_gain*BDP won't fit */
			 inflight >= FUNC0(sk, bw, bbr->pacing_gain));

	/* A pacing_gain < 1.0 tries to drain extra queue we added if bw
	 * probing didn't find more bw. If inflight falls to match BDP then we
	 * estimate queue is drained; persisting would underutilize the pipe.
	 */
	return is_full_length ||
		inflight <= FUNC0(sk, bw, BBR_UNIT);
}