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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 scalar_t__ TIPC_CONNECTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sock*) ; 
 int FUNC7 (long) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC8(struct socket *sock, long *timeo_p)
{
	FUNC0(wait, woken_wake_function);
	struct sock *sk = sock->sk;
	int done;

	do {
		int err = FUNC6(sk);
		if (err)
			return err;
		if (!*timeo_p)
			return -ETIMEDOUT;
		if (FUNC3(current))
			return FUNC7(*timeo_p);

		FUNC1(FUNC4(sk), &wait);
		done = FUNC5(sk, timeo_p,
				     sk->sk_state != TIPC_CONNECTING, &wait);
		FUNC2(FUNC4(sk), &wait);
	} while (!done);
	return 0;
}