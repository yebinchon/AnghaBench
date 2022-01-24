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
struct socket {int dummy; } ;
struct sock {int sk_protocol; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_sndtimeo; int /*<<< orphan*/  sk_destruct; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct iucv_sock {int /*<<< orphan*/  transport; int /*<<< orphan*/  src_user_id; int /*<<< orphan*/  sk_txnotify; int /*<<< orphan*/ * path; int /*<<< orphan*/  msg_recv; int /*<<< orphan*/  msg_sent; scalar_t__ msglimit; scalar_t__ flags; int /*<<< orphan*/  pendings; scalar_t__ send_tag; int /*<<< orphan*/  backlog_skb_q; TYPE_1__ message_q; int /*<<< orphan*/  send_skb_q; int /*<<< orphan*/  accept_q_lock; int /*<<< orphan*/  accept_q; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IUCV_TRANS_HIPER ; 
 int /*<<< orphan*/  AF_IUCV_TRANS_IUCV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IUCV_CONN_TIMEOUT ; 
 int /*<<< orphan*/  IUCV_OPEN ; 
 int /*<<< orphan*/  PF_IUCV ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  afiucv_hs_callback_txnotify ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  iucv_proto ; 
 struct iucv_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  iucv_sk_list ; 
 int /*<<< orphan*/  iucv_sock_destruct ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ pr_iucv ; 
 struct sock* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sock *FUNC10(struct socket *sock, int proto, gfp_t prio, int kern)
{
	struct sock *sk;
	struct iucv_sock *iucv;

	sk = FUNC5(&init_net, PF_IUCV, prio, &iucv_proto, kern);
	if (!sk)
		return NULL;
	iucv = FUNC2(sk);

	FUNC7(sock, sk);
	FUNC0(&iucv->accept_q);
	FUNC9(&iucv->accept_q_lock);
	FUNC6(&iucv->send_skb_q);
	FUNC0(&iucv->message_q.list);
	FUNC9(&iucv->message_q.lock);
	FUNC6(&iucv->backlog_skb_q);
	iucv->send_tag = 0;
	FUNC1(&iucv->pendings, 0);
	iucv->flags = 0;
	iucv->msglimit = 0;
	FUNC1(&iucv->msg_sent, 0);
	FUNC1(&iucv->msg_recv, 0);
	iucv->path = NULL;
	iucv->sk_txnotify = afiucv_hs_callback_txnotify;
	FUNC4(&iucv->src_user_id , 0, 32);
	if (pr_iucv)
		iucv->transport = AF_IUCV_TRANS_IUCV;
	else
		iucv->transport = AF_IUCV_TRANS_HIPER;

	sk->sk_destruct = iucv_sock_destruct;
	sk->sk_sndtimeo = IUCV_CONN_TIMEOUT;

	FUNC8(sk, SOCK_ZAPPED);

	sk->sk_protocol = proto;
	sk->sk_state	= IUCV_OPEN;

	FUNC3(&iucv_sk_list, sk);
	return sk;
}