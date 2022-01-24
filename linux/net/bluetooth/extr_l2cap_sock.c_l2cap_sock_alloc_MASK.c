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
struct sock {int sk_protocol; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_sndtimeo; int /*<<< orphan*/  sk_destruct; } ;
struct net {int dummy; } ;
struct l2cap_chan {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  accept_q; } ;
struct TYPE_3__ {struct l2cap_chan* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  L2CAP_CONN_TIMEOUT ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 struct l2cap_chan* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  l2cap_proto ; 
 int /*<<< orphan*/  l2cap_sock_destruct ; 
 struct sock* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sock *FUNC9(struct net *net, struct socket *sock,
				     int proto, gfp_t prio, int kern)
{
	struct sock *sk;
	struct l2cap_chan *chan;

	sk = FUNC5(net, PF_BLUETOOTH, prio, &l2cap_proto, kern);
	if (!sk)
		return NULL;

	FUNC7(sock, sk);
	FUNC0(&FUNC1(sk)->accept_q);

	sk->sk_destruct = l2cap_sock_destruct;
	sk->sk_sndtimeo = L2CAP_CONN_TIMEOUT;

	FUNC8(sk, SOCK_ZAPPED);

	sk->sk_protocol = proto;
	sk->sk_state = BT_OPEN;

	chan = FUNC2();
	if (!chan) {
		FUNC6(sk);
		return NULL;
	}

	FUNC3(chan);

	FUNC4(sk)->chan = chan;

	return sk;
}