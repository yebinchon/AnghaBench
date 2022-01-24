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
struct socket {scalar_t__ type; int /*<<< orphan*/  state; int /*<<< orphan*/ * ops; } ;
struct sock {int /*<<< orphan*/  sk_destruct; scalar_t__ sk_max_ack_backlog; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_state; } ;
struct rxrpc_sock {int family; int /*<<< orphan*/  sk; int /*<<< orphan*/  srx; int /*<<< orphan*/  call_lock; int /*<<< orphan*/  recvmsg_lock; int /*<<< orphan*/  recvmsg_q; int /*<<< orphan*/  to_be_accepted; int /*<<< orphan*/  sock_calls; int /*<<< orphan*/  incoming_lock; int /*<<< orphan*/  calls; } ;
struct rxrpc_net {int /*<<< orphan*/  peer_keepalive_timer; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_AF_RXRPC_IPV6 ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PF_INET ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  PF_RXRPC ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  RXRPC_UNBOUND ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RCU_FREE ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  FUNC2 (char*,struct socket*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rxrpc_sock*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct rxrpc_net* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_proto ; 
 int /*<<< orphan*/  rxrpc_rpc_ops ; 
 struct rxrpc_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  rxrpc_sock_destructor ; 
 int /*<<< orphan*/  rxrpc_write_space ; 
 struct sock* FUNC8 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct net *net, struct socket *sock, int protocol,
			int kern)
{
	struct rxrpc_net *rxnet;
	struct rxrpc_sock *rx;
	struct sock *sk;

	FUNC2("%p,%d", sock, protocol);

	/* we support transport protocol UDP/UDP6 only */
	if (protocol != PF_INET &&
	    FUNC1(CONFIG_AF_RXRPC_IPV6) && protocol != PF_INET6)
		return -EPROTONOSUPPORT;

	if (sock->type != SOCK_DGRAM)
		return -ESOCKTNOSUPPORT;

	sock->ops = &rxrpc_rpc_ops;
	sock->state = SS_UNCONNECTED;

	sk = FUNC8(net, PF_RXRPC, GFP_KERNEL, &rxrpc_proto, kern);
	if (!sk)
		return -ENOMEM;

	FUNC9(sock, sk);
	FUNC11(sk, SOCK_RCU_FREE);
	sk->sk_state		= RXRPC_UNBOUND;
	sk->sk_write_space	= rxrpc_write_space;
	sk->sk_max_ack_backlog	= 0;
	sk->sk_destruct		= rxrpc_sock_destructor;

	rx = FUNC7(sk);
	rx->family = protocol;
	rx->calls = RB_ROOT;

	FUNC12(&rx->incoming_lock);
	FUNC0(&rx->sock_calls);
	FUNC0(&rx->to_be_accepted);
	FUNC0(&rx->recvmsg_q);
	FUNC5(&rx->recvmsg_lock);
	FUNC5(&rx->call_lock);
	FUNC4(&rx->srx, 0, sizeof(rx->srx));

	rxnet = FUNC6(FUNC10(&rx->sk));
	FUNC13(&rxnet->peer_keepalive_timer, jiffies + 1);

	FUNC3(" = 0 [%p]", rx);
	return 0;
}