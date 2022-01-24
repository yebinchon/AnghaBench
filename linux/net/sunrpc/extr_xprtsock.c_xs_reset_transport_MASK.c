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
struct socket {int dummy; } ;
struct rpc_xprt {int /*<<< orphan*/  swapper; } ;
struct sock_xprt {int /*<<< orphan*/  recv_mutex; struct file* file; struct socket* sock; struct sock* inet; struct rpc_xprt xprt; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUT_RDWR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*,struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock_xprt*,struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock_xprt*) ; 

__attribute__((used)) static void FUNC14(struct sock_xprt *transport)
{
	struct socket *sock = transport->sock;
	struct sock *sk = transport->inet;
	struct rpc_xprt *xprt = &transport->xprt;
	struct file *filp = transport->file;

	if (sk == NULL)
		return;

	if (FUNC0(&transport->xprt.swapper))
		FUNC5(sk);

	FUNC2(sock, SHUT_RDWR);

	FUNC3(&transport->recv_mutex);
	FUNC7(&sk->sk_callback_lock);
	transport->inet = NULL;
	transport->sock = NULL;
	transport->file = NULL;

	sk->sk_user_data = NULL;

	FUNC11(transport, sk);
	FUNC9(xprt);
	FUNC8(&sk->sk_callback_lock);
	FUNC12(xprt);
	/* Reset stream record info */
	FUNC13(transport);
	FUNC4(&transport->recv_mutex);

	FUNC6(xprt, sock);
	FUNC1(filp);

	FUNC10(xprt);
}