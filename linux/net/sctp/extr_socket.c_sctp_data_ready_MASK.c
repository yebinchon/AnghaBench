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
struct sock {int /*<<< orphan*/  sk_wq; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDBAND ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SOCK_WAKE_WAITD ; 
 struct socket_wq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct socket_wq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(struct sock *sk)
{
	struct socket_wq *wq;

	FUNC1();
	wq = FUNC0(sk->sk_wq);
	if (FUNC4(wq))
		FUNC5(&wq->wait, EPOLLIN |
						EPOLLRDNORM | EPOLLRDBAND);
	FUNC3(sk, SOCK_WAKE_WAITD, POLL_IN);
	FUNC2();
}