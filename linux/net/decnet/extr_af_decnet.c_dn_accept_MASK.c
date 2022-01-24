#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sockaddr_dn {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_allocation; int /*<<< orphan*/  sk_ack_backlog; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {unsigned char* data; int /*<<< orphan*/  len; } ;
struct optdata_dn {int dummy; } ;
struct dst_entry {int dummy; } ;
struct dn_skb_cb {int services; int segsize; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  info; int /*<<< orphan*/  src_port; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {scalar_t__ a_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sdn_flags; TYPE_1__ sdn_add; } ;
struct TYPE_8__ {scalar_t__ state; int services_rem; int segsize_rem; scalar_t__ accept_mode; TYPE_2__ discdata_out; TYPE_2__ conndata_out; TYPE_2__ peer; int /*<<< orphan*/  conndata_in; int /*<<< orphan*/  accessdata; TYPE_2__ addr; int /*<<< orphan*/  max_window; int /*<<< orphan*/  info_rem; int /*<<< orphan*/  addrrem; } ;

/* Variables and functions */
 scalar_t__ ACC_IMMED ; 
 scalar_t__ DN_CR ; 
 unsigned char DN_MENUVER_ACC ; 
 unsigned char DN_MENUVER_PRX ; 
 unsigned char DN_MENUVER_UIC ; 
 unsigned char DN_MENUVER_USR ; 
 scalar_t__ DN_O ; 
 TYPE_5__* FUNC0 (struct sock*) ; 
 struct dn_skb_cb* FUNC1 (struct sk_buff*) ; 
 int EINVAL ; 
 int ENOBUFS ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int NSP_FC_MASK ; 
 int NSP_FC_NONE ; 
 int O_NONBLOCK ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  SDF_PROXY ; 
 int /*<<< orphan*/  SDF_UICPROXY ; 
 int /*<<< orphan*/  SDF_WILD ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  decnet_no_fc_max_cwnd ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct sock* FUNC5 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct sock*,long*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC10 (unsigned char*,int /*<<< orphan*/ ,TYPE_2__*,unsigned char*) ; 
 struct sk_buff* FUNC11 (struct sock*,long*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct dst_entry*) ; 
 struct sk_buff* FUNC17 (int /*<<< orphan*/ *) ; 
 struct dst_entry* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 long FUNC22 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct socket *sock, struct socket *newsock, int flags,
		     bool kern)
{
	struct sock *sk = sock->sk, *newsk;
	struct sk_buff *skb = NULL;
	struct dn_skb_cb *cb;
	unsigned char menuver;
	int err = 0;
	unsigned char type;
	long timeo = FUNC22(sk, flags & O_NONBLOCK);
	struct dst_entry *dst;

	FUNC13(sk);

	if (sk->sk_state != TCP_LISTEN || FUNC0(sk)->state != DN_O) {
		FUNC15(sk);
		return -EINVAL;
	}

	skb = FUNC17(&sk->sk_receive_queue);
	if (skb == NULL) {
		skb = FUNC11(sk, &timeo);
		if (FUNC2(skb)) {
			FUNC15(sk);
			return FUNC3(skb);
		}
	}

	cb = FUNC1(skb);
	sk->sk_ack_backlog--;
	newsk = FUNC5(FUNC21(sk), newsock, sk->sk_allocation, kern);
	if (newsk == NULL) {
		FUNC15(sk);
		FUNC12(skb);
		return -ENOBUFS;
	}
	FUNC15(sk);

	dst = FUNC18(skb);
	FUNC16(newsk, dst);
	FUNC19(skb, NULL);

	FUNC0(newsk)->state        = DN_CR;
	FUNC0(newsk)->addrrem      = cb->src_port;
	FUNC0(newsk)->services_rem = cb->services;
	FUNC0(newsk)->info_rem     = cb->info;
	FUNC0(newsk)->segsize_rem  = cb->segsize;
	FUNC0(newsk)->accept_mode  = FUNC0(sk)->accept_mode;

	if (FUNC0(newsk)->segsize_rem < 230)
		FUNC0(newsk)->segsize_rem = 230;

	if ((FUNC0(newsk)->services_rem & NSP_FC_MASK) == NSP_FC_NONE)
		FUNC0(newsk)->max_window = decnet_no_fc_max_cwnd;

	newsk->sk_state  = TCP_LISTEN;
	FUNC14(&(FUNC0(newsk)->addr), &(FUNC0(sk)->addr), sizeof(struct sockaddr_dn));

	/*
	 * If we are listening on a wild socket, we don't want
	 * the newly created socket on the wrong hash queue.
	 */
	FUNC0(newsk)->addr.sdn_flags &= ~SDF_WILD;

	FUNC20(skb, FUNC10(skb->data, skb->len, &(FUNC0(newsk)->addr), &type));
	FUNC20(skb, FUNC10(skb->data, skb->len, &(FUNC0(newsk)->peer), &type));
	*(__le16 *)(FUNC0(newsk)->peer.sdn_add.a_addr) = cb->src;
	*(__le16 *)(FUNC0(newsk)->addr.sdn_add.a_addr) = cb->dst;

	menuver = *skb->data;
	FUNC20(skb, 1);

	if (menuver & DN_MENUVER_ACC)
		FUNC4(skb, &(FUNC0(newsk)->accessdata));

	if (menuver & DN_MENUVER_USR)
		FUNC9(skb, &(FUNC0(newsk)->conndata_in));

	if (menuver & DN_MENUVER_PRX)
		FUNC0(newsk)->peer.sdn_flags |= SDF_PROXY;

	if (menuver & DN_MENUVER_UIC)
		FUNC0(newsk)->peer.sdn_flags |= SDF_UICPROXY;

	FUNC12(skb);

	FUNC14(&(FUNC0(newsk)->conndata_out), &(FUNC0(sk)->conndata_out),
		sizeof(struct optdata_dn));
	FUNC14(&(FUNC0(newsk)->discdata_out), &(FUNC0(sk)->discdata_out),
		sizeof(struct optdata_dn));

	FUNC13(newsk);
	err = FUNC7(newsk);
	if (err == 0) {
		FUNC23(newsk, SOCK_ZAPPED);
		FUNC8(newsk);

		/*
		 * Here we use sk->sk_allocation since although the conn conf is
		 * for the newsk, the context is the old socket.
		 */
		if (FUNC0(newsk)->accept_mode == ACC_IMMED)
			err = FUNC6(newsk, &timeo,
						sk->sk_allocation);
	}
	FUNC15(newsk);
	return err;
}