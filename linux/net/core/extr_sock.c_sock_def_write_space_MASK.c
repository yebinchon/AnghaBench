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
struct sock {int /*<<< orphan*/  sk_wq; int /*<<< orphan*/  sk_sndbuf; int /*<<< orphan*/  sk_wmem_alloc; } ;

/* Variables and functions */
 int EPOLLOUT ; 
 int EPOLLWRBAND ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_WAKE_SPACE ; 
 struct socket_wq* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct socket_wq*) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct sock *sk)
{
	struct socket_wq *wq;

	FUNC2();

	/* Do not wake up a writer until he can make "significant"
	 * progress.  --DaveM
	 */
	if ((FUNC4(&sk->sk_wmem_alloc) << 1) <= FUNC0(sk->sk_sndbuf)) {
		wq = FUNC1(sk->sk_wq);
		if (FUNC6(wq))
			FUNC8(&wq->wait, EPOLLOUT |
						EPOLLWRNORM | EPOLLWRBAND);

		/* Should agree with poll, otherwise some programs break */
		if (FUNC7(sk))
			FUNC5(sk, SOCK_WAKE_SPACE, POLL_OUT);
	}

	FUNC3();
}