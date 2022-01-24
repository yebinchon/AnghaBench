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
struct tcp_sock {unsigned long srtt_us; int mdev_us; int snd_cwnd; int snd_ssthresh; int reordering; } ;
struct tcp_metrics_block {int /*<<< orphan*/  tcpm_stamp; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int sysctl_tcp_reordering; scalar_t__ sysctl_tcp_nometrics_save; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; scalar_t__ icsk_backoff; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ TCP_CA_Open ; 
 int /*<<< orphan*/  TCP_METRIC_CWND ; 
 int /*<<< orphan*/  TCP_METRIC_REORDERING ; 
 int /*<<< orphan*/  TCP_METRIC_RTT ; 
 int /*<<< orphan*/  TCP_METRIC_RTTVAR ; 
 int /*<<< orphan*/  TCP_METRIC_SSTHRESH ; 
 struct dst_entry* FUNC0 (struct sock*) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct net* FUNC6 (struct sock*) ; 
 struct tcp_metrics_block* FUNC7 (struct sock*,struct dst_entry*,int) ; 
 scalar_t__ FUNC8 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcp_sock*) ; 
 void* FUNC10 (struct tcp_metrics_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tcp_metrics_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tcp_metrics_block*,int /*<<< orphan*/ ,int) ; 
 struct tcp_sock* FUNC13 (struct sock*) ; 

void FUNC14(struct sock *sk)
{
	const struct inet_connection_sock *icsk = FUNC1(sk);
	struct dst_entry *dst = FUNC0(sk);
	struct tcp_sock *tp = FUNC13(sk);
	struct net *net = FUNC6(sk);
	struct tcp_metrics_block *tm;
	unsigned long rtt;
	u32 val;
	int m;

	FUNC5(sk);
	if (net->ipv4.sysctl_tcp_nometrics_save || !dst)
		return;

	FUNC3();
	if (icsk->icsk_backoff || !tp->srtt_us) {
		/* This session failed to estimate rtt. Why?
		 * Probably, no packets returned in time.  Reset our
		 * results.
		 */
		tm = FUNC7(sk, dst, false);
		if (tm && !FUNC11(tm, TCP_METRIC_RTT))
			FUNC12(tm, TCP_METRIC_RTT, 0);
		goto out_unlock;
	} else
		tm = FUNC7(sk, dst, true);

	if (!tm)
		goto out_unlock;

	rtt = FUNC10(tm, TCP_METRIC_RTT);
	m = rtt - tp->srtt_us;

	/* If newly calculated rtt larger than stored one, store new
	 * one. Otherwise, use EWMA. Remember, rtt overestimation is
	 * always better than underestimation.
	 */
	if (!FUNC11(tm, TCP_METRIC_RTT)) {
		if (m <= 0)
			rtt = tp->srtt_us;
		else
			rtt -= (m >> 3);
		FUNC12(tm, TCP_METRIC_RTT, rtt);
	}

	if (!FUNC11(tm, TCP_METRIC_RTTVAR)) {
		unsigned long var;

		if (m < 0)
			m = -m;

		/* Scale deviation to rttvar fixed point */
		m >>= 1;
		if (m < tp->mdev_us)
			m = tp->mdev_us;

		var = FUNC10(tm, TCP_METRIC_RTTVAR);
		if (m >= var)
			var = m;
		else
			var -= (var - m) >> 2;

		FUNC12(tm, TCP_METRIC_RTTVAR, var);
	}

	if (FUNC8(tp)) {
		/* Slow start still did not finish. */
		if (!FUNC11(tm, TCP_METRIC_SSTHRESH)) {
			val = FUNC10(tm, TCP_METRIC_SSTHRESH);
			if (val && (tp->snd_cwnd >> 1) > val)
				FUNC12(tm, TCP_METRIC_SSTHRESH,
					       tp->snd_cwnd >> 1);
		}
		if (!FUNC11(tm, TCP_METRIC_CWND)) {
			val = FUNC10(tm, TCP_METRIC_CWND);
			if (tp->snd_cwnd > val)
				FUNC12(tm, TCP_METRIC_CWND,
					       tp->snd_cwnd);
		}
	} else if (!FUNC9(tp) &&
		   icsk->icsk_ca_state == TCP_CA_Open) {
		/* Cong. avoidance phase, cwnd is reliable. */
		if (!FUNC11(tm, TCP_METRIC_SSTHRESH))
			FUNC12(tm, TCP_METRIC_SSTHRESH,
				       FUNC2(tp->snd_cwnd >> 1, tp->snd_ssthresh));
		if (!FUNC11(tm, TCP_METRIC_CWND)) {
			val = FUNC10(tm, TCP_METRIC_CWND);
			FUNC12(tm, TCP_METRIC_CWND, (val + tp->snd_cwnd) >> 1);
		}
	} else {
		/* Else slow start did not finish, cwnd is non-sense,
		 * ssthresh may be also invalid.
		 */
		if (!FUNC11(tm, TCP_METRIC_CWND)) {
			val = FUNC10(tm, TCP_METRIC_CWND);
			FUNC12(tm, TCP_METRIC_CWND,
				       (val + tp->snd_ssthresh) >> 1);
		}
		if (!FUNC11(tm, TCP_METRIC_SSTHRESH)) {
			val = FUNC10(tm, TCP_METRIC_SSTHRESH);
			if (val && tp->snd_ssthresh > val)
				FUNC12(tm, TCP_METRIC_SSTHRESH,
					       tp->snd_ssthresh);
		}
		if (!FUNC11(tm, TCP_METRIC_REORDERING)) {
			val = FUNC10(tm, TCP_METRIC_REORDERING);
			if (val < tp->reordering &&
			    tp->reordering != net->ipv4.sysctl_tcp_reordering)
				FUNC12(tm, TCP_METRIC_REORDERING,
					       tp->reordering);
		}
	}
	tm->tcpm_stamp = jiffies;
out_unlock:
	FUNC4();
}