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
struct sock {int dummy; } ;
struct rxrpc_sock {int /*<<< orphan*/  recvmsg_q; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rxrpc_sock* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct socket*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *file, struct socket *sock,
			       poll_table *wait)
{
	struct sock *sk = sock->sk;
	struct rxrpc_sock *rx = FUNC1(sk);
	__poll_t mask;

	FUNC3(file, sock, wait);
	mask = 0;

	/* the socket is readable if there are any messages waiting on the Rx
	 * queue */
	if (!FUNC0(&rx->recvmsg_q))
		mask |= EPOLLIN | EPOLLRDNORM;

	/* the socket is writable if there is space to add new data to the
	 * socket; there is no guarantee that any particular call in progress
	 * on the socket may have space in the Tx ACK window */
	if (FUNC2(sk))
		mask |= EPOLLOUT | EPOLLWRNORM;

	return mask;
}