#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_tsq_flags; } ;
struct TYPE_4__ {int blocked; } ;
struct TYPE_3__ {struct sock sk; } ;
struct inet_connection_sock {TYPE_2__ icsk_ack; TYPE_1__ icsk_inet; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_DELAYEDACKLOCKED ; 
 int /*<<< orphan*/  TCP_DELACK_TIMER_DEFERRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct inet_connection_sock* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* icsk ; 
 int /*<<< orphan*/  icsk_delack_timer ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct inet_connection_sock *icsk =
			FUNC3(icsk, t, icsk_delack_timer);
	struct sock *sk = &icsk->icsk_inet.sk;

	FUNC1(sk);
	if (!FUNC6(sk)) {
		FUNC8(sk);
	} else {
		icsk->icsk_ack.blocked = 1;
		FUNC0(FUNC5(sk), LINUX_MIB_DELAYEDACKLOCKED);
		/* deleguate our work to tcp_release_cb() */
		if (!FUNC9(TCP_DELACK_TIMER_DEFERRED, &sk->sk_tsq_flags))
			FUNC4(sk);
	}
	FUNC2(sk);
	FUNC7(sk);
}