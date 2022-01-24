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
struct tcp_sock {int /*<<< orphan*/  snd_cwnd; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_sock*,int /*<<< orphan*/ ) ; 

void FUNC5(struct sock *sk, u32 ack, u32 acked)
{
	struct tcp_sock *tp = FUNC3(sk);

	if (!FUNC2(sk))
		return;

	/* In "safe" area, increase. */
	if (FUNC1(tp)) {
		acked = FUNC4(tp, acked);
		if (!acked)
			return;
	}
	/* In dangerous area, increase slowly. */
	FUNC0(tp, tp->snd_cwnd, acked);
}