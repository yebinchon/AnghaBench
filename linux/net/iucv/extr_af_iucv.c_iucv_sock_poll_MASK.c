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
struct sock {scalar_t__ sk_state; int sk_shutdown; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_error_queue; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLPRI ; 
 int EPOLLRDHUP ; 
 int EPOLLRDNORM ; 
 int EPOLLWRBAND ; 
 int EPOLLWRNORM ; 
 scalar_t__ IUCV_CLOSED ; 
 scalar_t__ IUCV_DISCONN ; 
 scalar_t__ IUCV_LISTEN ; 
 int RCV_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_SELECT_ERR_QUEUE ; 
 int FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct socket*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sock*) ; 

__poll_t FUNC7(struct file *file, struct socket *sock,
			    poll_table *wait)
{
	struct sock *sk = sock->sk;
	__poll_t mask = 0;

	FUNC5(file, sock, wait);

	if (sk->sk_state == IUCV_LISTEN)
		return FUNC0(sk);

	if (sk->sk_err || !FUNC3(&sk->sk_error_queue))
		mask |= EPOLLERR |
			(FUNC4(sk, SOCK_SELECT_ERR_QUEUE) ? EPOLLPRI : 0);

	if (sk->sk_shutdown & RCV_SHUTDOWN)
		mask |= EPOLLRDHUP;

	if (sk->sk_shutdown == SHUTDOWN_MASK)
		mask |= EPOLLHUP;

	if (!FUNC3(&sk->sk_receive_queue) ||
	    (sk->sk_shutdown & RCV_SHUTDOWN))
		mask |= EPOLLIN | EPOLLRDNORM;

	if (sk->sk_state == IUCV_CLOSED)
		mask |= EPOLLHUP;

	if (sk->sk_state == IUCV_DISCONN)
		mask |= EPOLLIN;

	if (FUNC6(sk) && FUNC1(sk))
		mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;
	else
		FUNC2(SOCKWQ_ASYNC_NOSPACE, sk);

	return mask;
}