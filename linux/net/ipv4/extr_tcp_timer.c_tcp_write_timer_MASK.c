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
struct timer_list {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_tsq_flags; } ;
struct TYPE_2__ {struct sock sk; } ;
struct inet_connection_sock {TYPE_1__ icsk_inet; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_WRITE_TIMER_DEFERRED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct inet_connection_sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* icsk ; 
 int /*<<< orphan*/  icsk_retransmit_timer ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct inet_connection_sock *icsk =
			FUNC2(icsk, t, icsk_retransmit_timer);
	struct sock *sk = &icsk->icsk_inet.sk;

	FUNC0(sk);
	if (!FUNC4(sk)) {
		FUNC6(sk);
	} else {
		/* delegate our work to tcp_release_cb() */
		if (!FUNC7(TCP_WRITE_TIMER_DEFERRED, &sk->sk_tsq_flags))
			FUNC3(sk);
	}
	FUNC1(sk);
	FUNC5(sk);
}