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
struct sock {int sk_state; int sk_shutdown; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_rmem_alloc; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int DCCPF_REQUESTING ; 
 int DCCPF_RESPOND ; 
 int DCCP_CLOSED ; 
 int DCCP_LISTEN ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDHUP ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct socket*,int /*<<< orphan*/ *) ; 

__poll_t FUNC6(struct file *file, struct socket *sock,
		       poll_table *wait)
{
	__poll_t mask;
	struct sock *sk = sock->sk;

	FUNC5(file, sock, wait);
	if (sk->sk_state == DCCP_LISTEN)
		return FUNC1(sk);

	/* Socket is not locked. We are protected from async events
	   by poll logic and correct handling of state changes
	   made by another threads is impossible in any case.
	 */

	mask = 0;
	if (sk->sk_err)
		mask = EPOLLERR;

	if (sk->sk_shutdown == SHUTDOWN_MASK || sk->sk_state == DCCP_CLOSED)
		mask |= EPOLLHUP;
	if (sk->sk_shutdown & RCV_SHUTDOWN)
		mask |= EPOLLIN | EPOLLRDNORM | EPOLLRDHUP;

	/* Connected? */
	if ((1 << sk->sk_state) & ~(DCCPF_REQUESTING | DCCPF_RESPOND)) {
		if (FUNC0(&sk->sk_rmem_alloc) > 0)
			mask |= EPOLLIN | EPOLLRDNORM;

		if (!(sk->sk_shutdown & SEND_SHUTDOWN)) {
			if (FUNC4(sk)) {
				mask |= EPOLLOUT | EPOLLWRNORM;
			} else {  /* send SIGIO later */
				FUNC3(SOCKWQ_ASYNC_NOSPACE, sk);
				FUNC2(SOCK_NOSPACE, &sk->sk_socket->flags);

				/* Race breaker. If space is freed after
				 * wspace test but before the flags are set,
				 * IO signal will be lost.
				 */
				if (FUNC4(sk))
					mask |= EPOLLOUT | EPOLLWRNORM;
			}
		}
	}
	return mask;
}