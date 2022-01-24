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
struct bictcp {int /*<<< orphan*/  cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bictcp*,int /*<<< orphan*/ ) ; 
 struct bictcp* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, u32 ack, u32 acked)
{
	struct tcp_sock *tp = FUNC5(sk);
	struct bictcp *ca = FUNC1(sk);

	if (!FUNC4(sk))
		return;

	if (FUNC3(tp))
		FUNC6(tp, acked);
	else {
		FUNC0(ca, tp->snd_cwnd);
		FUNC2(tp, ca->cnt, 1);
	}
}