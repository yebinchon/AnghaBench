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
struct vsock_sock {int rejected; int sent_request; int ignore_connecting_rst; int /*<<< orphan*/  connect_timeout; int /*<<< orphan*/  owner; int /*<<< orphan*/  trusted; int /*<<< orphan*/  pending_work; int /*<<< orphan*/  connect_work; scalar_t__ peer_shutdown; int /*<<< orphan*/  accept_queue; int /*<<< orphan*/  pending_links; int /*<<< orphan*/ * listener; int /*<<< orphan*/  connected_table; int /*<<< orphan*/  bound_table; int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  local_addr; } ;
struct socket {int dummy; } ;
struct sock {unsigned short sk_type; int /*<<< orphan*/  sk_backlog_rcv; int /*<<< orphan*/  sk_destruct; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {scalar_t__ (* init ) (struct vsock_sock*,struct vsock_sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_VSOCK ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  VMADDR_CID_ANY ; 
 int /*<<< orphan*/  VMADDR_PORT_ANY ; 
 int /*<<< orphan*/  VSOCK_DEFAULT_CONNECT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct sock* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct vsock_sock*,struct vsock_sock*) ; 
 TYPE_1__* transport ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vsock_connect_timeout ; 
 int /*<<< orphan*/  FUNC11 (struct vsock_sock*) ; 
 int /*<<< orphan*/  vsock_pending_work ; 
 int /*<<< orphan*/  vsock_proto ; 
 int /*<<< orphan*/  vsock_queue_rcv_skb ; 
 struct vsock_sock* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  vsock_sk_destruct ; 

struct sock *FUNC13(struct net *net,
			    struct socket *sock,
			    struct sock *parent,
			    gfp_t priority,
			    unsigned short type,
			    int kern)
{
	struct sock *sk;
	struct vsock_sock *psk;
	struct vsock_sock *vsk;

	sk = FUNC5(net, AF_VSOCK, priority, &vsock_proto, kern);
	if (!sk)
		return NULL;

	FUNC7(sock, sk);

	/* sk->sk_type is normally set in sock_init_data, but only if sock is
	 * non-NULL. We make sure that our sockets always have a type by
	 * setting it here if needed.
	 */
	if (!sock)
		sk->sk_type = type;

	vsk = FUNC12(sk);
	FUNC10(&vsk->local_addr, VMADDR_CID_ANY, VMADDR_PORT_ANY);
	FUNC10(&vsk->remote_addr, VMADDR_CID_ANY, VMADDR_PORT_ANY);

	sk->sk_destruct = vsock_sk_destruct;
	sk->sk_backlog_rcv = vsock_queue_rcv_skb;
	FUNC8(sk, SOCK_DONE);

	FUNC1(&vsk->bound_table);
	FUNC1(&vsk->connected_table);
	vsk->listener = NULL;
	FUNC1(&vsk->pending_links);
	FUNC1(&vsk->accept_queue);
	vsk->rejected = false;
	vsk->sent_request = false;
	vsk->ignore_connecting_rst = false;
	vsk->peer_shutdown = 0;
	FUNC0(&vsk->connect_work, vsock_connect_timeout);
	FUNC0(&vsk->pending_work, vsock_pending_work);

	psk = parent ? FUNC12(parent) : NULL;
	if (parent) {
		vsk->trusted = psk->trusted;
		vsk->owner = FUNC3(psk->owner);
		vsk->connect_timeout = psk->connect_timeout;
	} else {
		vsk->trusted = FUNC2(CAP_NET_ADMIN);
		vsk->owner = FUNC4();
		vsk->connect_timeout = VSOCK_DEFAULT_CONNECT_TIMEOUT;
	}

	if (transport->init(vsk, psk) < 0) {
		FUNC6(sk);
		return NULL;
	}

	if (sock)
		FUNC11(vsk);

	return sk;
}