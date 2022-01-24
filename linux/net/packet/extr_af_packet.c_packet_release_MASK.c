#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union tpacket_req_u {int dummy; } tpacket_req_u ;
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_prot; } ;
struct TYPE_8__ {scalar_t__ pg_vec; } ;
struct TYPE_7__ {scalar_t__ pg_vec; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dev; } ;
struct packet_sock {struct packet_fanout* rollover; TYPE_4__ tx_ring; TYPE_3__ rx_ring; int /*<<< orphan*/  bind_lock; TYPE_2__ prot_hook; } ;
struct packet_fanout {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  sklist_lock; } ;
struct net {TYPE_1__ packet; } ;
typedef  int /*<<< orphan*/  req_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct packet_fanout* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_fanout*) ; 
 int /*<<< orphan*/  FUNC3 (struct packet_fanout*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (union tpacket_req_u*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct packet_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct packet_sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,union tpacket_req_u*,int,int) ; 
 struct packet_sock* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct net* FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (struct sock*,int) ; 

__attribute__((used)) static int FUNC27(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct packet_sock *po;
	struct packet_fanout *f;
	struct net *net;
	union tpacket_req_u req_u;

	if (!sk)
		return 0;

	net = FUNC19(sk);
	po = FUNC12(sk);

	FUNC6(&net->packet.sklist_lock);
	FUNC16(sk);
	FUNC7(&net->packet.sklist_lock);

	FUNC13();
	FUNC21(net, sk->sk_prot, -1);
	FUNC14();

	FUNC23(&po->bind_lock);
	FUNC26(sk, false);
	FUNC8(po);

	if (po->prot_hook.dev) {
		FUNC0(po->prot_hook.dev);
		po->prot_hook.dev = NULL;
	}
	FUNC24(&po->bind_lock);

	FUNC9(sk);

	FUNC4(sk);
	if (po->rx_ring.pg_vec) {
		FUNC5(&req_u, 0, sizeof(req_u));
		FUNC11(sk, &req_u, 1, 0);
	}

	if (po->tx_ring.pg_vec) {
		FUNC5(&req_u, 0, sizeof(req_u));
		FUNC11(sk, &req_u, 1, 1);
	}
	FUNC15(sk);

	f = FUNC1(sk);

	FUNC25();

	FUNC3(po->rollover);
	if (f) {
		FUNC2(f);
		FUNC3(f);
	}
	/*
	 *	Now the socket is dead. No more input will appear.
	 */
	FUNC20(sk);
	sock->sk = NULL;

	/* Purge queues */

	FUNC18(&sk->sk_receive_queue);
	FUNC10(po);
	FUNC17(sk);

	FUNC22(sk);
	return 0;
}