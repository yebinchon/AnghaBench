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
struct xdp_sock {int /*<<< orphan*/  map_list_lock; int /*<<< orphan*/  map_list; int /*<<< orphan*/  tx_completion_lock; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; } ;
struct socket {scalar_t__ type; int /*<<< orphan*/ * ops; int /*<<< orphan*/  state; } ;
struct sock {int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct net {TYPE_1__ xdp; int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_RAW ; 
 int ENOBUFS ; 
 int EPERM ; 
 int EPROTONOSUPPORT ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PF_XDP ; 
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_RCU_FREE ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  XSK_READY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ *) ; 
 struct sock* FUNC8 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct xdp_sock* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  xsk_destruct ; 
 int /*<<< orphan*/  xsk_proto ; 
 int /*<<< orphan*/  xsk_proto_ops ; 

__attribute__((used)) static int FUNC15(struct net *net, struct socket *sock, int protocol,
		      int kern)
{
	struct sock *sk;
	struct xdp_sock *xs;

	if (!FUNC6(net->user_ns, CAP_NET_RAW))
		return -EPERM;
	if (sock->type != SOCK_RAW)
		return -ESOCKTNOSUPPORT;

	if (protocol)
		return -EPROTONOSUPPORT;

	sock->state = SS_UNCONNECTED;

	sk = FUNC8(net, PF_XDP, GFP_KERNEL, &xsk_proto, kern);
	if (!sk)
		return -ENOBUFS;

	sock->ops = &xsk_proto_ops;

	FUNC10(sock, sk);

	sk->sk_family = PF_XDP;

	sk->sk_destruct = xsk_destruct;
	FUNC9(sk);

	FUNC12(sk, SOCK_RCU_FREE);

	xs = FUNC14(sk);
	xs->state = XSK_READY;
	FUNC3(&xs->mutex);
	FUNC13(&xs->rx_lock);
	FUNC13(&xs->tx_completion_lock);

	FUNC0(&xs->map_list);
	FUNC13(&xs->map_list_lock);

	FUNC4(&net->xdp.lock);
	FUNC7(sk, &net->xdp.list);
	FUNC5(&net->xdp.lock);

	FUNC1();
	FUNC11(net, &xsk_proto, 1);
	FUNC2();

	return 0;
}