#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vsock_transport_recv_notify_data {int dummy; } ;
struct vsock_sock {int peer_shutdown; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; scalar_t__ sk_err; } ;
struct msghdr {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {size_t (* stream_rcvhiwat ) (struct vsock_sock*) ;int (* notify_recv_init ) (struct vsock_sock*,size_t,struct vsock_transport_recv_notify_data*) ;int (* notify_recv_pre_block ) (struct vsock_sock*,size_t,struct vsock_transport_recv_notify_data*) ;int (* notify_recv_pre_dequeue ) (struct vsock_sock*,size_t,struct vsock_transport_recv_notify_data*) ;size_t (* stream_dequeue ) (struct vsock_sock*,struct msghdr*,size_t,int) ;int (* notify_recv_post_dequeue ) (struct vsock_sock*,size_t,size_t,int,struct vsock_transport_recv_notify_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 int MSG_PEEK ; 
 int MSG_WAITALL ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 long FUNC5 (long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC9 (long) ; 
 size_t FUNC10 (struct sock*,int,size_t) ; 
 long FUNC11 (struct sock*,int) ; 
 size_t FUNC12 (struct vsock_sock*) ; 
 int FUNC13 (struct vsock_sock*,size_t,struct vsock_transport_recv_notify_data*) ; 
 int FUNC14 (struct vsock_sock*,size_t,struct vsock_transport_recv_notify_data*) ; 
 int FUNC15 (struct vsock_sock*,size_t,struct vsock_transport_recv_notify_data*) ; 
 size_t FUNC16 (struct vsock_sock*,struct msghdr*,size_t,int) ; 
 int FUNC17 (struct vsock_sock*,size_t,size_t,int,struct vsock_transport_recv_notify_data*) ; 
 TYPE_1__* transport ; 
 struct vsock_sock* FUNC18 (struct sock*) ; 
 scalar_t__ FUNC19 (struct vsock_sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC20(struct socket *sock, struct msghdr *msg, size_t len,
		     int flags)
{
	struct sock *sk;
	struct vsock_sock *vsk;
	int err;
	size_t target;
	ssize_t copied;
	long timeout;
	struct vsock_transport_recv_notify_data recv_data;

	FUNC0(wait);

	sk = sock->sk;
	vsk = FUNC18(sk);
	err = 0;

	FUNC2(sk);

	if (sk->sk_state != TCP_ESTABLISHED) {
		/* Recvmsg is supposed to return 0 if a peer performs an
		 * orderly shutdown. Differentiate between that case and when a
		 * peer has not connected or a local shutdown occured with the
		 * SOCK_DONE flag.
		 */
		if (FUNC8(sk, SOCK_DONE))
			err = 0;
		else
			err = -ENOTCONN;

		goto out;
	}

	if (flags & MSG_OOB) {
		err = -EOPNOTSUPP;
		goto out;
	}

	/* We don't check peer_shutdown flag here since peer may actually shut
	 * down, but there can be data in the queue that a local socket can
	 * receive.
	 */
	if (sk->sk_shutdown & RCV_SHUTDOWN) {
		err = 0;
		goto out;
	}

	/* It is valid on Linux to pass in a zero-length receive buffer.  This
	 * is not an error.  We may as well bail out now.
	 */
	if (!len) {
		err = 0;
		goto out;
	}

	/* We must not copy less than target bytes into the user's buffer
	 * before returning successfully, so we wait for the consume queue to
	 * have that much data to consume before dequeueing.  Note that this
	 * makes it impossible to handle cases where target is greater than the
	 * queue size.
	 */
	target = FUNC10(sk, flags & MSG_WAITALL, len);
	if (target >= transport->stream_rcvhiwat(vsk)) {
		err = -ENOMEM;
		goto out;
	}
	timeout = FUNC11(sk, flags & MSG_DONTWAIT);
	copied = 0;

	err = transport->notify_recv_init(vsk, target, &recv_data);
	if (err < 0)
		goto out;


	while (1) {
		s64 ready;

		FUNC3(FUNC7(sk), &wait, TASK_INTERRUPTIBLE);
		ready = FUNC19(vsk);

		if (ready == 0) {
			if (sk->sk_err != 0 ||
			    (sk->sk_shutdown & RCV_SHUTDOWN) ||
			    (vsk->peer_shutdown & SEND_SHUTDOWN)) {
				FUNC1(FUNC7(sk), &wait);
				break;
			}
			/* Don't wait for non-blocking sockets. */
			if (timeout == 0) {
				err = -EAGAIN;
				FUNC1(FUNC7(sk), &wait);
				break;
			}

			err = transport->notify_recv_pre_block(
					vsk, target, &recv_data);
			if (err < 0) {
				FUNC1(FUNC7(sk), &wait);
				break;
			}
			FUNC4(sk);
			timeout = FUNC5(timeout);
			FUNC2(sk);

			if (FUNC6(current)) {
				err = FUNC9(timeout);
				FUNC1(FUNC7(sk), &wait);
				break;
			} else if (timeout == 0) {
				err = -EAGAIN;
				FUNC1(FUNC7(sk), &wait);
				break;
			}
		} else {
			ssize_t read;

			FUNC1(FUNC7(sk), &wait);

			if (ready < 0) {
				/* Invalid queue pair content. XXX This should
				* be changed to a connection reset in a later
				* change.
				*/

				err = -ENOMEM;
				goto out;
			}

			err = transport->notify_recv_pre_dequeue(
					vsk, target, &recv_data);
			if (err < 0)
				break;

			read = transport->stream_dequeue(
					vsk, msg,
					len - copied, flags);
			if (read < 0) {
				err = -ENOMEM;
				break;
			}

			copied += read;

			err = transport->notify_recv_post_dequeue(
					vsk, target, read,
					!(flags & MSG_PEEK), &recv_data);
			if (err < 0)
				goto out;

			if (read >= target || flags & MSG_PEEK)
				break;

			target -= read;
		}
	}

	if (sk->sk_err)
		err = -sk->sk_err;
	else if (sk->sk_shutdown & RCV_SHUTDOWN)
		err = 0;

	if (copied > 0)
		err = copied;

out:
	FUNC4(sk);
	return err;
}