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
struct vsock_sock {long connect_timeout; int /*<<< orphan*/  connect_work; int /*<<< orphan*/  remote_addr; } ;
struct socket {int state; struct sock* sk; } ;
struct sockaddr_vm {int /*<<< orphan*/  svm_port; int /*<<< orphan*/  svm_cid; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_err; } ;
struct TYPE_2__ {int (* connect ) (struct vsock_sock*) ;int /*<<< orphan*/  (* stream_allow ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EALREADY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int ENETUNREACH ; 
 int ETIMEDOUT ; 
 int O_NONBLOCK ; 
#define  SS_CONNECTED 130 
#define  SS_CONNECTING 129 
#define  SS_DISCONNECTING 128 
 void* SS_UNCONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 void* TCP_CLOSE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ TCP_LISTEN ; 
 scalar_t__ TCP_SYN_SENT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sockaddr_vm*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,long) ; 
 long FUNC7 (long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int FUNC11 (long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct vsock_sock*) ; 
 TYPE_1__* transport ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr*,int,struct sockaddr_vm**) ; 
 int FUNC15 (struct vsock_sock*) ; 
 struct vsock_sock* FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct vsock_sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC18(struct socket *sock, struct sockaddr *addr,
				int addr_len, int flags)
{
	int err;
	struct sock *sk;
	struct vsock_sock *vsk;
	struct sockaddr_vm *remote_addr;
	long timeout;
	FUNC0(wait);

	err = 0;
	sk = sock->sk;
	vsk = FUNC16(sk);

	FUNC2(sk);

	/* XXX AF_UNSPEC should make us disconnect like AF_INET. */
	switch (sock->state) {
	case SS_CONNECTED:
		err = -EISCONN;
		goto out;
	case SS_DISCONNECTING:
		err = -EINVAL;
		goto out;
	case SS_CONNECTING:
		/* This continues on so we can move sock into the SS_CONNECTED
		 * state once the connection has completed (at which point err
		 * will be set to zero also).  Otherwise, we will either wait
		 * for the connection or return -EALREADY should this be a
		 * non-blocking call.
		 */
		err = -EALREADY;
		break;
	default:
		if ((sk->sk_state == TCP_LISTEN) ||
		    FUNC14(addr, addr_len, &remote_addr) != 0) {
			err = -EINVAL;
			goto out;
		}

		/* The hypervisor and well-known contexts do not have socket
		 * endpoints.
		 */
		if (!transport->stream_allow(remote_addr->svm_cid,
					     remote_addr->svm_port)) {
			err = -ENETUNREACH;
			goto out;
		}

		/* Set the remote address that we are connecting to. */
		FUNC3(&vsk->remote_addr, remote_addr,
		       sizeof(vsk->remote_addr));

		err = FUNC15(vsk);
		if (err)
			goto out;

		sk->sk_state = TCP_SYN_SENT;

		err = transport->connect(vsk);
		if (err < 0)
			goto out;

		/* Mark sock as connecting and set the error code to in
		 * progress in case this is a non-blocking connect.
		 */
		sock->state = SS_CONNECTING;
		err = -EINPROGRESS;
	}

	/* The receive path will handle all communication until we are able to
	 * enter the connected state.  Here we wait for the connection to be
	 * completed or a notification of an error.
	 */
	timeout = vsk->connect_timeout;
	FUNC4(FUNC9(sk), &wait, TASK_INTERRUPTIBLE);

	while (sk->sk_state != TCP_ESTABLISHED && sk->sk_err == 0) {
		if (flags & O_NONBLOCK) {
			/* If we're not going to block, we schedule a timeout
			 * function to generate a timeout on the connection
			 * attempt, in case the peer doesn't respond in a
			 * timely manner. We hold on to the socket until the
			 * timeout fires.
			 */
			FUNC10(sk);
			FUNC6(&vsk->connect_work, timeout);

			/* Skip ahead to preserve error code set above. */
			goto out_wait;
		}

		FUNC5(sk);
		timeout = FUNC7(timeout);
		FUNC2(sk);

		if (FUNC8(current)) {
			err = FUNC11(timeout);
			sk->sk_state = TCP_CLOSE;
			sock->state = SS_UNCONNECTED;
			FUNC17(vsk);
			goto out_wait;
		} else if (timeout == 0) {
			err = -ETIMEDOUT;
			sk->sk_state = TCP_CLOSE;
			sock->state = SS_UNCONNECTED;
			FUNC17(vsk);
			goto out_wait;
		}

		FUNC4(FUNC9(sk), &wait, TASK_INTERRUPTIBLE);
	}

	if (sk->sk_err) {
		err = -sk->sk_err;
		sk->sk_state = TCP_CLOSE;
		sock->state = SS_UNCONNECTED;
	} else {
		err = 0;
	}

out_wait:
	FUNC1(FUNC9(sk), &wait);
out:
	FUNC5(sk);
	return err;
}