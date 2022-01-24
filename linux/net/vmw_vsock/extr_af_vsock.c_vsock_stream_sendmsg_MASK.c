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
struct vsock_transport_send_notify_data {int dummy; } ;
struct vsock_sock {int peer_shutdown; int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  local_addr; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; int sk_err; } ;
struct msghdr {int msg_flags; scalar_t__ msg_namelen; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int (* notify_send_init ) (struct vsock_sock*,struct vsock_transport_send_notify_data*) ;int (* notify_send_pre_block ) (struct vsock_sock*,struct vsock_transport_send_notify_data*) ;int (* notify_send_pre_enqueue ) (struct vsock_sock*,struct vsock_transport_send_notify_data*) ;size_t (* stream_enqueue ) (struct vsock_sock*,struct msghdr*,size_t) ;int (* notify_send_post_enqueue ) (struct vsock_sock*,size_t,struct vsock_transport_send_notify_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EDESTADDRREQ ; 
 int EISCONN ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int EPIPE ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int FUNC7 (long) ; 
 long FUNC8 (struct sock*,int) ; 
 int FUNC9 (struct vsock_sock*,struct vsock_transport_send_notify_data*) ; 
 int FUNC10 (struct vsock_sock*,struct vsock_transport_send_notify_data*) ; 
 int FUNC11 (struct vsock_sock*,struct vsock_transport_send_notify_data*) ; 
 size_t FUNC12 (struct vsock_sock*,struct msghdr*,size_t) ; 
 int FUNC13 (struct vsock_sock*,size_t,struct vsock_transport_send_notify_data*) ; 
 TYPE_1__* transport ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct vsock_sock* FUNC15 (struct sock*) ; 
 scalar_t__ FUNC16 (struct vsock_sock*) ; 
 int /*<<< orphan*/  wait ; 
 long FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC18(struct socket *sock, struct msghdr *msg,
				size_t len)
{
	struct sock *sk;
	struct vsock_sock *vsk;
	ssize_t total_written;
	long timeout;
	int err;
	struct vsock_transport_send_notify_data send_data;
	FUNC0(wait, woken_wake_function);

	sk = sock->sk;
	vsk = FUNC15(sk);
	total_written = 0;
	err = 0;

	if (msg->msg_flags & MSG_OOB)
		return -EOPNOTSUPP;

	FUNC2(sk);

	/* Callers should not provide a destination with stream sockets. */
	if (msg->msg_namelen) {
		err = sk->sk_state == TCP_ESTABLISHED ? -EISCONN : -EOPNOTSUPP;
		goto out;
	}

	/* Send data only if both sides are not shutdown in the direction. */
	if (sk->sk_shutdown & SEND_SHUTDOWN ||
	    vsk->peer_shutdown & RCV_SHUTDOWN) {
		err = -EPIPE;
		goto out;
	}

	if (sk->sk_state != TCP_ESTABLISHED ||
	    !FUNC14(&vsk->local_addr)) {
		err = -ENOTCONN;
		goto out;
	}

	if (!FUNC14(&vsk->remote_addr)) {
		err = -EDESTADDRREQ;
		goto out;
	}

	/* Wait for room in the produce queue to enqueue our user's data. */
	timeout = FUNC8(sk, msg->msg_flags & MSG_DONTWAIT);

	err = transport->notify_send_init(vsk, &send_data);
	if (err < 0)
		goto out;

	while (total_written < len) {
		ssize_t written;

		FUNC1(FUNC6(sk), &wait);
		while (FUNC16(vsk) == 0 &&
		       sk->sk_err == 0 &&
		       !(sk->sk_shutdown & SEND_SHUTDOWN) &&
		       !(vsk->peer_shutdown & RCV_SHUTDOWN)) {

			/* Don't wait for non-blocking sockets. */
			if (timeout == 0) {
				err = -EAGAIN;
				FUNC4(FUNC6(sk), &wait);
				goto out_err;
			}

			err = transport->notify_send_pre_block(vsk, &send_data);
			if (err < 0) {
				FUNC4(FUNC6(sk), &wait);
				goto out_err;
			}

			FUNC3(sk);
			timeout = FUNC17(&wait, TASK_INTERRUPTIBLE, timeout);
			FUNC2(sk);
			if (FUNC5(current)) {
				err = FUNC7(timeout);
				FUNC4(FUNC6(sk), &wait);
				goto out_err;
			} else if (timeout == 0) {
				err = -EAGAIN;
				FUNC4(FUNC6(sk), &wait);
				goto out_err;
			}
		}
		FUNC4(FUNC6(sk), &wait);

		/* These checks occur both as part of and after the loop
		 * conditional since we need to check before and after
		 * sleeping.
		 */
		if (sk->sk_err) {
			err = -sk->sk_err;
			goto out_err;
		} else if ((sk->sk_shutdown & SEND_SHUTDOWN) ||
			   (vsk->peer_shutdown & RCV_SHUTDOWN)) {
			err = -EPIPE;
			goto out_err;
		}

		err = transport->notify_send_pre_enqueue(vsk, &send_data);
		if (err < 0)
			goto out_err;

		/* Note that enqueue will only write as many bytes as are free
		 * in the produce queue, so we don't need to ensure len is
		 * smaller than the queue size.  It is the caller's
		 * responsibility to check how many bytes we were able to send.
		 */

		written = transport->stream_enqueue(
				vsk, msg,
				len - total_written);
		if (written < 0) {
			err = -ENOMEM;
			goto out_err;
		}

		total_written += written;

		err = transport->notify_send_post_enqueue(
				vsk, written, &send_data);
		if (err < 0)
			goto out_err;

	}

out_err:
	if (total_written > 0)
		err = total_written;
out:
	FUNC3(sk);
	return err;
}