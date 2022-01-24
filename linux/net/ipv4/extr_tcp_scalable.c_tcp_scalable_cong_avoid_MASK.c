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
 int /*<<< orphan*/  TCP_SCALABLE_AI_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_sock*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, u32 ack, u32 acked)
{
	struct tcp_sock *tp = FUNC4(sk);

	if (!FUNC3(sk))
		return;

	if (FUNC2(tp))
		FUNC5(tp, acked);
	else
		FUNC1(tp, FUNC0(tp->snd_cwnd, TCP_SCALABLE_AI_CNT),
				  1);
}