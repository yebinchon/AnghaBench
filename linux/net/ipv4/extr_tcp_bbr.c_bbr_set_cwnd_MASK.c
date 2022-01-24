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
struct tcp_sock {scalar_t__ snd_cwnd; scalar_t__ delivered; scalar_t__ snd_cwnd_clamp; } ;
struct sock {int dummy; } ;
struct rate_sample {int dummy; } ;
struct bbr {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ BBR_PROBE_RTT ; 
 scalar_t__ TCP_INIT_CWND ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*,scalar_t__,int) ; 
 scalar_t__ bbr_cwnd_min_target ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct sock*,struct rate_sample const*,scalar_t__,scalar_t__*) ; 
 struct bbr* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 struct tcp_sock* FUNC8 (struct sock*) ; 

__attribute__((used)) static void FUNC9(struct sock *sk, const struct rate_sample *rs,
			 u32 acked, u32 bw, int gain)
{
	struct tcp_sock *tp = FUNC8(sk);
	struct bbr *bbr = FUNC5(sk);
	u32 cwnd = tp->snd_cwnd, target_cwnd = 0;

	if (!acked)
		goto done;  /* no packet fully ACKed; just apply caps */

	if (FUNC4(sk, rs, acked, &cwnd))
		goto done;

	target_cwnd = FUNC1(sk, bw, gain);

	/* Increment the cwnd to account for excess ACKed data that seems
	 * due to aggregation (of data and/or ACKs) visible in the ACK stream.
	 */
	target_cwnd += FUNC0(sk);
	target_cwnd = FUNC3(sk, target_cwnd);

	/* If we're below target cwnd, slow start cwnd toward target cwnd. */
	if (FUNC2(sk))  /* only cut cwnd if we filled the pipe */
		cwnd = FUNC7(cwnd + acked, target_cwnd);
	else if (cwnd < target_cwnd || tp->delivered < TCP_INIT_CWND)
		cwnd = cwnd + acked;
	cwnd = FUNC6(cwnd, bbr_cwnd_min_target);

done:
	tp->snd_cwnd = FUNC7(cwnd, tp->snd_cwnd_clamp);	/* apply global cap */
	if (bbr->mode == BBR_PROBE_RTT)  /* drain queue, refresh min_rtt */
		tp->snd_cwnd = FUNC7(tp->snd_cwnd, bbr_cwnd_min_target);
}