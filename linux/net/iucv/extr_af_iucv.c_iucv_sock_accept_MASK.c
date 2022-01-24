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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EBADFD ; 
 scalar_t__ IUCV_LISTEN ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct sock* FUNC2 (struct sock*,struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int FUNC10 (long) ; 
 long FUNC11 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC12(struct socket *sock, struct socket *newsock,
			    int flags, bool kern)
{
	FUNC0(wait, current);
	struct sock *sk = sock->sk, *nsk;
	long timeo;
	int err = 0;

	FUNC3(sk, SINGLE_DEPTH_NESTING);

	if (sk->sk_state != IUCV_LISTEN) {
		err = -EBADFD;
		goto done;
	}

	timeo = FUNC11(sk, flags & O_NONBLOCK);

	/* Wait for an incoming connection */
	FUNC1(FUNC9(sk), &wait);
	while (!(nsk = FUNC2(sk, newsock))) {
		FUNC7(TASK_INTERRUPTIBLE);
		if (!timeo) {
			err = -EAGAIN;
			break;
		}

		FUNC4(sk);
		timeo = FUNC6(timeo);
		FUNC3(sk, SINGLE_DEPTH_NESTING);

		if (sk->sk_state != IUCV_LISTEN) {
			err = -EBADFD;
			break;
		}

		if (FUNC8(current)) {
			err = FUNC10(timeo);
			break;
		}
	}

	FUNC7(TASK_RUNNING);
	FUNC5(FUNC9(sk), &wait);

	if (err)
		goto done;

	newsock->state = SS_CONNECTED;

done:
	FUNC4(sk);
	return err;
}