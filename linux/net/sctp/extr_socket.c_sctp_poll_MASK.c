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
struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_error_queue; scalar_t__ sk_err; } ;
struct sctp_sock {TYPE_1__* ep; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  asocs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSED ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLPRI ; 
 int EPOLLRDHUP ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  LISTENING ; 
 int RCV_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_SELECT_ERR_QUEUE ; 
 int /*<<< orphan*/  TCP ; 
 int /*<<< orphan*/  UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sctp_sock* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__poll_t FUNC11(struct file *file, struct socket *sock, poll_table *wait)
{
	struct sock *sk = sock->sk;
	struct sctp_sock *sp = FUNC2(sk);
	__poll_t mask;

	FUNC1(file, FUNC7(sk), wait);

	FUNC10(sk);

	/* A TCP-style listening socket becomes readable when the accept queue
	 * is not empty.
	 */
	if (FUNC4(sk, TCP) && FUNC3(sk, LISTENING))
		return (!FUNC0(&sp->ep->asocs)) ?
			(EPOLLIN | EPOLLRDNORM) : 0;

	mask = 0;

	/* Is there any exceptional events?  */
	if (sk->sk_err || !FUNC8(&sk->sk_error_queue))
		mask |= EPOLLERR |
			(FUNC9(sk, SOCK_SELECT_ERR_QUEUE) ? EPOLLPRI : 0);
	if (sk->sk_shutdown & RCV_SHUTDOWN)
		mask |= EPOLLRDHUP | EPOLLIN | EPOLLRDNORM;
	if (sk->sk_shutdown == SHUTDOWN_MASK)
		mask |= EPOLLHUP;

	/* Is it readable?  Reconsider this code with TCP-style support.  */
	if (!FUNC8(&sk->sk_receive_queue))
		mask |= EPOLLIN | EPOLLRDNORM;

	/* The association is either gone or not ready.  */
	if (!FUNC4(sk, UDP) && FUNC3(sk, CLOSED))
		return mask;

	/* Is it writable?  */
	if (FUNC5(sk)) {
		mask |= EPOLLOUT | EPOLLWRNORM;
	} else {
		FUNC6(SOCKWQ_ASYNC_NOSPACE, sk);
		/*
		 * Since the socket is not locked, the buffer
		 * might be made available after the writeable check and
		 * before the bit is set.  This could cause a lost I/O
		 * signal.  tcp_poll() has a race breaker for this race
		 * condition.  Based on their implementation, we put
		 * in the following code to cover it as well.
		 */
		if (FUNC5(sk))
			mask |= EPOLLOUT | EPOLLWRNORM;
	}
	return mask;
}