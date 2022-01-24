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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {scalar_t__ snd_cwnd; scalar_t__ snd_cwnd_clamp; scalar_t__ snd_cwnd_cnt; } ;
struct sock {int dummy; } ;
struct hstcp {size_t ai; } ;
struct TYPE_2__ {scalar_t__ cwnd; } ;

/* Variables and functions */
 int HSTCP_AIMD_MAX ; 
 TYPE_1__* hstcp_aimd_vals ; 
 struct hstcp* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, u32 ack, u32 acked)
{
	struct tcp_sock *tp = FUNC3(sk);
	struct hstcp *ca = FUNC0(sk);

	if (!FUNC2(sk))
		return;

	if (FUNC1(tp))
		FUNC4(tp, acked);
	else {
		/* Update AIMD parameters.
		 *
		 * We want to guarantee that:
		 *     hstcp_aimd_vals[ca->ai-1].cwnd <
		 *     snd_cwnd <=
		 *     hstcp_aimd_vals[ca->ai].cwnd
		 */
		if (tp->snd_cwnd > hstcp_aimd_vals[ca->ai].cwnd) {
			while (tp->snd_cwnd > hstcp_aimd_vals[ca->ai].cwnd &&
			       ca->ai < HSTCP_AIMD_MAX - 1)
				ca->ai++;
		} else if (ca->ai && tp->snd_cwnd <= hstcp_aimd_vals[ca->ai-1].cwnd) {
			while (ca->ai && tp->snd_cwnd <= hstcp_aimd_vals[ca->ai-1].cwnd)
				ca->ai--;
		}

		/* Do additive increase */
		if (tp->snd_cwnd < tp->snd_cwnd_clamp) {
			/* cwnd = cwnd + a(w) / cwnd */
			tp->snd_cwnd_cnt += ca->ai + 1;
			if (tp->snd_cwnd_cnt >= tp->snd_cwnd) {
				tp->snd_cwnd_cnt -= tp->snd_cwnd;
				tp->snd_cwnd++;
			}
		}
	}
}