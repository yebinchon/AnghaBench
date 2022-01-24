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
struct sock {int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; } ;
struct qrtr_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct qrtr_sock*) ; 
 struct qrtr_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static int FUNC9(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct qrtr_sock *ipc;

	if (!sk)
		return 0;

	FUNC0(sk);

	ipc = FUNC2(sk);
	sk->sk_shutdown = SHUTDOWN_MASK;
	if (!FUNC5(sk, SOCK_DEAD))
		sk->sk_state_change(sk);

	FUNC7(sk, SOCK_DEAD);
	sock->sk = NULL;

	if (!FUNC5(sk, SOCK_ZAPPED))
		FUNC1(ipc);

	FUNC4(&sk->sk_receive_queue);

	FUNC3(sk);
	FUNC6(sk);

	return 0;
}