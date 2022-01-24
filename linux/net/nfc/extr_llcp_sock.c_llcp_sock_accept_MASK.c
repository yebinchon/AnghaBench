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
 scalar_t__ LLCP_LISTEN ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC4 (struct sock*,struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC8 (long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int FUNC12 (long) ; 
 long FUNC13 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC14(struct socket *sock, struct socket *newsock,
			    int flags, bool kern)
{
	FUNC0(wait, current);
	struct sock *sk = sock->sk, *new_sk;
	long timeo;
	int ret = 0;

	FUNC5("parent %p\n", sk);

	FUNC3(sk, SINGLE_DEPTH_NESTING);

	if (sk->sk_state != LLCP_LISTEN) {
		ret = -EBADFD;
		goto error;
	}

	timeo = FUNC13(sk, flags & O_NONBLOCK);

	/* Wait for an incoming connection. */
	FUNC2(FUNC11(sk), &wait);
	while (!(new_sk = FUNC4(sk, newsock))) {
		FUNC9(TASK_INTERRUPTIBLE);

		if (!timeo) {
			ret = -EAGAIN;
			break;
		}

		if (FUNC10(current)) {
			ret = FUNC12(timeo);
			break;
		}

		FUNC6(sk);
		timeo = FUNC8(timeo);
		FUNC3(sk, SINGLE_DEPTH_NESTING);
	}
	FUNC1(TASK_RUNNING);
	FUNC7(FUNC11(sk), &wait);

	if (ret)
		goto error;

	newsock->state = SS_CONNECTED;

	FUNC5("new socket %p\n", new_sk);

error:
	FUNC6(sk);

	return ret;
}