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
struct bictcp {int /*<<< orphan*/  cnt; int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct bictcp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ hystart ; 
 struct bictcp* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sock *sk, u32 ack, u32 acked)
{
	struct tcp_sock *tp = FUNC7(sk);
	struct bictcp *ca = FUNC3(sk);

	if (!FUNC6(sk))
		return;

	if (FUNC5(tp)) {
		if (hystart && FUNC0(ack, ca->end_seq))
			FUNC1(sk);
		acked = FUNC8(tp, acked);
		if (!acked)
			return;
	}
	FUNC2(ca, tp->snd_cwnd, acked);
	FUNC4(tp, ca->cnt, acked);
}