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
struct socket_wq {int /*<<< orphan*/  wait; } ;
struct sock {scalar_t__ sk_shutdown; scalar_t__ sk_state; int /*<<< orphan*/  sk_wq; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLPRI ; 
 int EPOLLRDBAND ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  POLL_HUP ; 
 int /*<<< orphan*/  POLL_IN ; 
 scalar_t__ SHUTDOWN_MASK ; 
 scalar_t__ SMC_CLOSED ; 
 int /*<<< orphan*/  SOCK_WAKE_WAITD ; 
 struct socket_wq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct socket_wq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct socket_wq *wq;

	/* derived from sock_def_readable() */
	/* called already in smc_listen_work() */
	FUNC1();
	wq = FUNC0(sk->sk_wq);
	if (FUNC4(wq))
		FUNC5(&wq->wait, EPOLLIN | EPOLLPRI |
						EPOLLRDNORM | EPOLLRDBAND);
	FUNC3(sk, SOCK_WAKE_WAITD, POLL_IN);
	if ((sk->sk_shutdown == SHUTDOWN_MASK) ||
	    (sk->sk_state == SMC_CLOSED))
		FUNC3(sk, SOCK_WAKE_WAITD, POLL_HUP);
	FUNC2();
}