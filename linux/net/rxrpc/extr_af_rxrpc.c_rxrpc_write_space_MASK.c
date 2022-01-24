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
 int /*<<< orphan*/  POLL_OUT ; 
 int /*<<< orphan*/  SOCK_WAKE_SPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 struct socket_wq* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct socket_wq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct sock *sk)
{
	FUNC0("%p", sk);
	FUNC2();
	if (FUNC4(sk)) {
		struct socket_wq *wq = FUNC1(sk->sk_wq);

		if (FUNC6(wq))
			FUNC7(&wq->wait);
		FUNC5(sk, SOCK_WAKE_SPACE, POLL_OUT);
	}
	FUNC3();
}