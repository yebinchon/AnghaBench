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
struct socket {int /*<<< orphan*/  state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,...) ; 
 scalar_t__ BT_LISTEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EBADFD ; 
 int /*<<< orphan*/  L2CAP_NESTING_PARENT ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sock* FUNC3 (struct sock*,struct socket*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (long) ; 
 long FUNC10 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 
 long FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC12(struct socket *sock, struct socket *newsock,
			     int flags, bool kern)
{
	FUNC1(wait, woken_wake_function);
	struct sock *sk = sock->sk, *nsk;
	long timeo;
	int err = 0;

	FUNC4(sk, L2CAP_NESTING_PARENT);

	timeo = FUNC10(sk, flags & O_NONBLOCK);

	FUNC0("sk %p timeo %ld", sk, timeo);

	/* Wait for an incoming connection. (wake-one). */
	FUNC2(FUNC8(sk), &wait);
	while (1) {
		if (sk->sk_state != BT_LISTEN) {
			err = -EBADFD;
			break;
		}

		nsk = FUNC3(sk, newsock);
		if (nsk)
			break;

		if (!timeo) {
			err = -EAGAIN;
			break;
		}

		if (FUNC7(current)) {
			err = FUNC9(timeo);
			break;
		}

		FUNC5(sk);

		timeo = FUNC11(&wait, TASK_INTERRUPTIBLE, timeo);

		FUNC4(sk, L2CAP_NESTING_PARENT);
	}
	FUNC6(FUNC8(sk), &wait);

	if (err)
		goto done;

	newsock->state = SS_CONNECTED;

	FUNC0("new socket %p", nsk);

done:
	FUNC5(sk);
	return err;
}