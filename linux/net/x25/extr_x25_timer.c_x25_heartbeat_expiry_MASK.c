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
struct sock {int /*<<< orphan*/  sk_state; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
#define  X25_STATE_0 129 
#define  X25_STATE_3 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct sock* sk ; 
 int /*<<< orphan*/  sk_timer ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 TYPE_1__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct sock *sk = FUNC2(sk, t, sk_timer);

	FUNC0(sk);
	if (FUNC4(sk)) /* can currently only occur in state 3 */
		goto restart_heartbeat;

	switch (FUNC7(sk)->state) {

		case X25_STATE_0:
			/*
			 * Magic here: If we listen() and a new link dies
			 * before it is accepted() it isn't 'dead' so doesn't
			 * get removed.
			 */
			if (FUNC3(sk, SOCK_DESTROY) ||
			    (sk->sk_state == TCP_LISTEN &&
			     FUNC3(sk, SOCK_DEAD))) {
				FUNC1(sk);
				FUNC6(sk);
				return;
			}
			break;

		case X25_STATE_3:
			/*
			 * Check for the state of the receive buffer.
			 */
			FUNC5(sk);
			break;
	}
restart_heartbeat:
	FUNC8(sk);
	FUNC1(sk);
}