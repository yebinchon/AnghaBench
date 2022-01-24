#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_state; scalar_t__ sk_protocol; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct request_sock_queue {TYPE_1__ fastopenq; } ;
struct request_sock {struct sock* sk; } ;
struct inet_connection_sock {struct request_sock_queue icsk_accept_queue; } ;
struct TYPE_4__ {scalar_t__ tfo_listener; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ IPPROTO_TCP ; 
 int O_NONBLOCK ; 
 scalar_t__ TCP_LISTEN ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*,long) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_sock*) ; 
 scalar_t__ FUNC5 (struct request_sock_queue*) ; 
 struct request_sock* FUNC6 (struct request_sock_queue*,struct sock*) ; 
 long FUNC7 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (struct request_sock*) ; 

struct sock *FUNC11(struct sock *sk, int flags, int *err, bool kern)
{
	struct inet_connection_sock *icsk = FUNC0(sk);
	struct request_sock_queue *queue = &icsk->icsk_accept_queue;
	struct request_sock *req;
	struct sock *newsk;
	int error;

	FUNC2(sk);

	/* We need to make sure that this socket is listening,
	 * and that it has something pending.
	 */
	error = -EINVAL;
	if (sk->sk_state != TCP_LISTEN)
		goto out_err;

	/* Find already established connection */
	if (FUNC5(queue)) {
		long timeo = FUNC7(sk, flags & O_NONBLOCK);

		/* If this is a non blocking socket don't sleep */
		error = -EAGAIN;
		if (!timeo)
			goto out_err;

		error = FUNC1(sk, timeo);
		if (error)
			goto out_err;
	}
	req = FUNC6(queue, sk);
	newsk = req->sk;

	if (sk->sk_protocol == IPPROTO_TCP &&
	    FUNC10(req)->tfo_listener) {
		FUNC8(&queue->fastopenq.lock);
		if (FUNC10(req)->tfo_listener) {
			/* We are still waiting for the final ACK from 3WHS
			 * so can't free req now. Instead, we set req->sk to
			 * NULL to signify that the child socket is taken
			 * so reqsk_fastopen_remove() will free the req
			 * when 3WHS finishes (or is aborted).
			 */
			req->sk = NULL;
			req = NULL;
		}
		FUNC9(&queue->fastopenq.lock);
	}
out:
	FUNC3(sk);
	if (req)
		FUNC4(req);
	return newsk;
out_err:
	newsk = NULL;
	req = NULL;
	*err = error;
	goto out;
}