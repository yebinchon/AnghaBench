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
typedef  int u32 ;
struct veno {int cntrtt; int minrtt; int basertt; int diff; int inc; int /*<<< orphan*/  doing_veno_now; } ;
struct tcp_sock {int snd_cwnd; int snd_cwnd_cnt; int snd_cwnd_clamp; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int V_PARAM_SHIFT ; 
 int beta ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct veno* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*,int,int) ; 
 scalar_t__ FUNC3 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int,int) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_sock*,int) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, u32 ack, u32 acked)
{
	struct tcp_sock *tp = FUNC6(sk);
	struct veno *veno = FUNC1(sk);

	if (!veno->doing_veno_now) {
		FUNC5(sk, ack, acked);
		return;
	}

	/* limited by applications */
	if (!FUNC4(sk))
		return;

	/* We do the Veno calculations only if we got enough rtt samples */
	if (veno->cntrtt <= 2) {
		/* We don't have enough rtt samples to do the Veno
		 * calculation, so we'll behave like Reno.
		 */
		FUNC5(sk, ack, acked);
	} else {
		u64 target_cwnd;
		u32 rtt;

		/* We have enough rtt samples, so, using the Veno
		 * algorithm, we determine the state of the network.
		 */

		rtt = veno->minrtt;

		target_cwnd = (u64)tp->snd_cwnd * veno->basertt;
		target_cwnd <<= V_PARAM_SHIFT;
		FUNC0(target_cwnd, rtt);

		veno->diff = (tp->snd_cwnd << V_PARAM_SHIFT) - target_cwnd;

		if (FUNC3(tp)) {
			/* Slow start.  */
			FUNC7(tp, acked);
		} else {
			/* Congestion avoidance. */
			if (veno->diff < beta) {
				/* In the "non-congestive state", increase cwnd
				 *  every rtt.
				 */
				FUNC2(tp, tp->snd_cwnd, 1);
			} else {
				/* In the "congestive state", increase cwnd
				 * every other rtt.
				 */
				if (tp->snd_cwnd_cnt >= tp->snd_cwnd) {
					if (veno->inc &&
					    tp->snd_cwnd < tp->snd_cwnd_clamp) {
						tp->snd_cwnd++;
						veno->inc = 0;
					} else
						veno->inc = 1;
					tp->snd_cwnd_cnt = 0;
				} else
					tp->snd_cwnd_cnt++;
			}
		}
		if (tp->snd_cwnd < 2)
			tp->snd_cwnd = 2;
		else if (tp->snd_cwnd > tp->snd_cwnd_clamp)
			tp->snd_cwnd = tp->snd_cwnd_clamp;
	}
	/* Wipe the slate clean for the next rtt. */
	/* veno->cntrtt = 0; */
	veno->minrtt = 0x7fffffff;
}