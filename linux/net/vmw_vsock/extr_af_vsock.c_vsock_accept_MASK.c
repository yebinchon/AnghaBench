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
struct vsock_sock {int rejected; } ;
struct socket {scalar_t__ type; int /*<<< orphan*/  state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_err; int /*<<< orphan*/  sk_ack_backlog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 long FUNC6 (long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct socket*) ; 
 int FUNC10 (long) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 long FUNC12 (struct sock*,int) ; 
 struct sock* FUNC13 (struct sock*) ; 
 struct vsock_sock* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC15(struct socket *sock, struct socket *newsock, int flags,
			bool kern)
{
	struct sock *listener;
	int err;
	struct sock *connected;
	struct vsock_sock *vconnected;
	long timeout;
	FUNC0(wait);

	err = 0;
	listener = sock->sk;

	FUNC2(listener);

	if (sock->type != SOCK_STREAM) {
		err = -EOPNOTSUPP;
		goto out;
	}

	if (listener->sk_state != TCP_LISTEN) {
		err = -EINVAL;
		goto out;
	}

	/* Wait for children sockets to appear; these are the new sockets
	 * created upon connection establishment.
	 */
	timeout = FUNC12(listener, flags & O_NONBLOCK);
	FUNC4(FUNC8(listener), &wait, TASK_INTERRUPTIBLE);

	while ((connected = FUNC13(listener)) == NULL &&
	       listener->sk_err == 0) {
		FUNC5(listener);
		timeout = FUNC6(timeout);
		FUNC1(FUNC8(listener), &wait);
		FUNC2(listener);

		if (FUNC7(current)) {
			err = FUNC10(timeout);
			goto out;
		} else if (timeout == 0) {
			err = -EAGAIN;
			goto out;
		}

		FUNC4(FUNC8(listener), &wait, TASK_INTERRUPTIBLE);
	}
	FUNC1(FUNC8(listener), &wait);

	if (listener->sk_err)
		err = -listener->sk_err;

	if (connected) {
		listener->sk_ack_backlog--;

		FUNC3(connected, SINGLE_DEPTH_NESTING);
		vconnected = FUNC14(connected);

		/* If the listener socket has received an error, then we should
		 * reject this socket and return.  Note that we simply mark the
		 * socket rejected, drop our reference, and let the cleanup
		 * function handle the cleanup; the fact that we found it in
		 * the listener's accept queue guarantees that the cleanup
		 * function hasn't run yet.
		 */
		if (err) {
			vconnected->rejected = true;
		} else {
			newsock->state = SS_CONNECTED;
			FUNC9(connected, newsock);
		}

		FUNC5(connected);
		FUNC11(connected);
	}

out:
	FUNC5(listener);
	return err;
}