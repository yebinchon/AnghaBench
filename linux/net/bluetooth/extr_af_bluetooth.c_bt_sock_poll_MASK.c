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
struct sock {scalar_t__ sk_state; int sk_shutdown; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_error_queue; scalar_t__ sk_err; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECT2 ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 scalar_t__ BT_LISTEN ; 
 int /*<<< orphan*/  BT_SK_SUSPEND ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLPRI ; 
 int EPOLLRDHUP ; 
 int EPOLLRDNORM ; 
 int EPOLLWRBAND ; 
 int EPOLLWRNORM ; 
 int RCV_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_SELECT_ERR_QUEUE ; 
 int FUNC1 (struct sock*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__poll_t FUNC10(struct file *file, struct socket *sock,
			  poll_table *wait)
{
	struct sock *sk = sock->sk;
	__poll_t mask = 0;

	FUNC0("sock %p, sk %p", sock, sk);

	FUNC3(file, FUNC5(sk), wait);

	if (sk->sk_state == BT_LISTEN)
		return FUNC1(sk);

	if (sk->sk_err || !FUNC6(&sk->sk_error_queue))
		mask |= EPOLLERR |
			(FUNC7(sk, SOCK_SELECT_ERR_QUEUE) ? EPOLLPRI : 0);

	if (sk->sk_shutdown & RCV_SHUTDOWN)
		mask |= EPOLLRDHUP | EPOLLIN | EPOLLRDNORM;

	if (sk->sk_shutdown == SHUTDOWN_MASK)
		mask |= EPOLLHUP;

	if (!FUNC6(&sk->sk_receive_queue))
		mask |= EPOLLIN | EPOLLRDNORM;

	if (sk->sk_state == BT_CLOSED)
		mask |= EPOLLHUP;

	if (sk->sk_state == BT_CONNECT ||
			sk->sk_state == BT_CONNECT2 ||
			sk->sk_state == BT_CONFIG)
		return mask;

	if (!FUNC9(BT_SK_SUSPEND, &FUNC2(sk)->flags) && FUNC8(sk))
		mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;
	else
		FUNC4(SOCKWQ_ASYNC_NOSPACE, sk);

	return mask;
}