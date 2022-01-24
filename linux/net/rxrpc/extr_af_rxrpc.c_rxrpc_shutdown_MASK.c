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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct sock {scalar_t__ sk_state; TYPE_1__ sk_receive_queue; int /*<<< orphan*/  sk_shutdown; } ;
struct rxrpc_sock {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ESHUTDOWN ; 
 scalar_t__ RXRPC_CLOSE ; 
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_sock*) ; 
 struct rxrpc_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, int flags)
{
	struct sock *sk = sock->sk;
	struct rxrpc_sock *rx = FUNC4(sk);
	int ret = 0;

	FUNC0("%p,%d", sk, flags);

	if (flags != SHUT_RDWR)
		return -EOPNOTSUPP;
	if (sk->sk_state == RXRPC_CLOSE)
		return -ESHUTDOWN;

	FUNC1(sk);

	FUNC5(&sk->sk_receive_queue.lock);
	if (sk->sk_state < RXRPC_CLOSE) {
		sk->sk_state = RXRPC_CLOSE;
		sk->sk_shutdown = SHUTDOWN_MASK;
	} else {
		ret = -ESHUTDOWN;
	}
	FUNC6(&sk->sk_receive_queue.lock);

	FUNC3(rx);

	FUNC2(sk);
	return ret;
}