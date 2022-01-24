#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct sock {int sk_sndbuf; int sk_rcvbuf; int sk_protocol; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_sndtimeo; int /*<<< orphan*/  sk_destruct; } ;
struct rfcomm_dlc {struct sock* owner; int /*<<< orphan*/  state_change; int /*<<< orphan*/  data_ready; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  accept_q; } ;
struct TYPE_3__ {struct rfcomm_dlc* dlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 int /*<<< orphan*/  BT_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  RFCOMM_CONN_TIMEOUT ; 
 int RFCOMM_DEFAULT_MTU ; 
 int RFCOMM_MAX_CREDITS ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sock*) ; 
 struct rfcomm_dlc* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  rfcomm_proto ; 
 int /*<<< orphan*/  rfcomm_sk_data_ready ; 
 int /*<<< orphan*/  rfcomm_sk_list ; 
 int /*<<< orphan*/  rfcomm_sk_state_change ; 
 int /*<<< orphan*/  rfcomm_sock_destruct ; 
 struct sock* FUNC6 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sock *FUNC10(struct net *net, struct socket *sock, int proto, gfp_t prio, int kern)
{
	struct rfcomm_dlc *d;
	struct sock *sk;

	sk = FUNC6(net, PF_BLUETOOTH, prio, &rfcomm_proto, kern);
	if (!sk)
		return NULL;

	FUNC8(sock, sk);
	FUNC1(&FUNC2(sk)->accept_q);

	d = FUNC4(prio);
	if (!d) {
		FUNC7(sk);
		return NULL;
	}

	d->data_ready   = rfcomm_sk_data_ready;
	d->state_change = rfcomm_sk_state_change;

	FUNC5(sk)->dlc = d;
	d->owner = sk;

	sk->sk_destruct = rfcomm_sock_destruct;
	sk->sk_sndtimeo = RFCOMM_CONN_TIMEOUT;

	sk->sk_sndbuf = RFCOMM_MAX_CREDITS * RFCOMM_DEFAULT_MTU * 10;
	sk->sk_rcvbuf = RFCOMM_MAX_CREDITS * RFCOMM_DEFAULT_MTU * 10;

	FUNC9(sk, SOCK_ZAPPED);

	sk->sk_protocol = proto;
	sk->sk_state    = BT_OPEN;

	FUNC3(&rfcomm_sk_list, sk);

	FUNC0("sk %p", sk);
	return sk;
}