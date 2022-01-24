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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {int snd_cwnd_cnt; int snd_cwnd; int snd_cwnd_clamp; } ;
struct sock {int dummy; } ;
struct htcp {int alpha; int pkts_acked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct htcp*) ; 
 struct htcp* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, u32 ack, u32 acked)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct htcp *ca = FUNC1(sk);

	if (!FUNC3(sk))
		return;

	if (FUNC2(tp))
		FUNC5(tp, acked);
	else {
		/* In dangerous area, increase slowly.
		 * In theory this is tp->snd_cwnd += alpha / tp->snd_cwnd
		 */
		if ((tp->snd_cwnd_cnt * ca->alpha)>>7 >= tp->snd_cwnd) {
			if (tp->snd_cwnd < tp->snd_cwnd_clamp)
				tp->snd_cwnd++;
			tp->snd_cwnd_cnt = 0;
			FUNC0(ca);
		} else
			tp->snd_cwnd_cnt += ca->pkts_acked;

		ca->pkts_acked = 1;
	}
}