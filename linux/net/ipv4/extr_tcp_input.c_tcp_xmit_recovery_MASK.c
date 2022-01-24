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
struct tcp_sock {scalar_t__ frto; int /*<<< orphan*/  high_seq; int /*<<< orphan*/  snd_nxt; } ;
struct sock {scalar_t__ sk_state; } ;

/* Variables and functions */
 int REXMIT_NONE ; 
 int /*<<< orphan*/  TCP_NAGLE_OFF ; 
 scalar_t__ TCP_SYN_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, int rexmit)
{
	struct tcp_sock *tp = FUNC3(sk);

	if (rexmit == REXMIT_NONE || sk->sk_state == TCP_SYN_SENT)
		return;

	if (FUNC5(rexmit == 2)) {
		FUNC0(sk, FUNC2(sk),
					  TCP_NAGLE_OFF);
		if (FUNC1(tp->snd_nxt, tp->high_seq))
			return;
		tp->frto = 0;
	}
	FUNC4(sk);
}