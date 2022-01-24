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
struct xdp_sock {int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; int /*<<< orphan*/  mutex; } ;
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_prot; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct net {TYPE_1__ xdp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct net* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 struct xdp_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct xdp_sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct xdp_sock*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct xdp_sock *xs = FUNC10(sk);
	struct net *net;

	if (!sk)
		return 0;

	net = FUNC6(sk);

	FUNC2(&net->xdp.lock);
	FUNC4(sk);
	FUNC3(&net->xdp.lock);

	FUNC0();
	FUNC8(net, sk->sk_prot, -1);
	FUNC1();

	FUNC11(xs);
	FUNC2(&xs->mutex);
	FUNC12(xs);
	FUNC3(&xs->mutex);

	FUNC13(xs->rx);
	FUNC13(xs->tx);

	FUNC7(sk);
	sock->sk = NULL;

	FUNC5(sk);
	FUNC9(sk);

	return 0;
}