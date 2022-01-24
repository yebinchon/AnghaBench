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
struct socket {int type; int /*<<< orphan*/ * ops; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;
struct kcm_net {int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; int /*<<< orphan*/  mux_list; } ;
struct kcm_mux {int /*<<< orphan*/  rx_hold_queue; int /*<<< orphan*/  kcm_mux_list; struct kcm_net* knet; int /*<<< orphan*/  psocks_avail; int /*<<< orphan*/  psocks_ready; int /*<<< orphan*/  psocks; int /*<<< orphan*/  kcm_tx_waiters; int /*<<< orphan*/  kcm_rx_waiters; int /*<<< orphan*/  kcm_socks; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int KCMPROTO_CONNECTED ; 
 int /*<<< orphan*/  PF_KCM ; 
#define  SOCK_DGRAM 129 
#define  SOCK_SEQPACKET 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kcm_mux*) ; 
 int /*<<< orphan*/  kcm_dgram_ops ; 
 int /*<<< orphan*/  kcm_muxp ; 
 int /*<<< orphan*/  kcm_net_id ; 
 int /*<<< orphan*/  kcm_proto ; 
 int /*<<< orphan*/  kcm_seqpacket_ops ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct kcm_mux* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct kcm_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC8 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net *net, struct socket *sock,
		      int protocol, int kern)
{
	struct kcm_net *knet = FUNC7(net, kcm_net_id);
	struct sock *sk;
	struct kcm_mux *mux;

	switch (sock->type) {
	case SOCK_DGRAM:
		sock->ops = &kcm_dgram_ops;
		break;
	case SOCK_SEQPACKET:
		sock->ops = &kcm_seqpacket_ops;
		break;
	default:
		return -ESOCKTNOSUPPORT;
	}

	if (protocol != KCMPROTO_CONNECTED)
		return -EPROTONOSUPPORT;

	sk = FUNC8(net, PF_KCM, GFP_KERNEL, &kcm_proto, kern);
	if (!sk)
		return -ENOMEM;

	/* Allocate a kcm mux, shared between KCM sockets */
	mux = FUNC3(kcm_muxp, GFP_KERNEL);
	if (!mux) {
		FUNC9(sk);
		return -ENOMEM;
	}

	FUNC12(&mux->lock);
	FUNC12(&mux->rx_lock);
	FUNC0(&mux->kcm_socks);
	FUNC0(&mux->kcm_rx_waiters);
	FUNC0(&mux->kcm_tx_waiters);

	FUNC0(&mux->psocks);
	FUNC0(&mux->psocks_ready);
	FUNC0(&mux->psocks_avail);

	mux->knet = knet;

	/* Add new MUX to list */
	FUNC5(&knet->mutex);
	FUNC4(&mux->kcm_mux_list, &knet->mux_list);
	knet->count++;
	FUNC6(&knet->mutex);

	FUNC10(&mux->rx_hold_queue);

	/* Init KCM socket */
	FUNC11(sock, sk);
	FUNC1(FUNC2(sk), mux);

	return 0;
}