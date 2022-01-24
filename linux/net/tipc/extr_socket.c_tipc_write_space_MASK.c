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
 int EPOLLOUT ; 
 int EPOLLWRBAND ; 
 int EPOLLWRNORM ; 
 struct socket_wq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct socket_wq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct socket_wq *wq;

	FUNC1();
	wq = FUNC0(sk->sk_wq);
	if (FUNC3(wq))
		FUNC4(&wq->wait, EPOLLOUT |
						EPOLLWRNORM | EPOLLWRBAND);
	FUNC2();
}