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
struct sock {int sk_protocol; int /*<<< orphan*/  sk_timer; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_sndtimeo; int /*<<< orphan*/  sk_destruct; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  accept_q; } ;
struct TYPE_3__ {int /*<<< orphan*/  setting; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_OPEN ; 
 int /*<<< orphan*/  BT_VOICE_CVSD_16BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SCO_CONN_TIMEOUT ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sock*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  sco_proto ; 
 int /*<<< orphan*/  sco_sk_list ; 
 int /*<<< orphan*/  sco_sock_destruct ; 
 int /*<<< orphan*/  sco_sock_timeout ; 
 struct sock* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sock *FUNC8(struct net *net, struct socket *sock,
				   int proto, gfp_t prio, int kern)
{
	struct sock *sk;

	sk = FUNC4(net, PF_BLUETOOTH, prio, &sco_proto, kern);
	if (!sk)
		return NULL;

	FUNC5(sock, sk);
	FUNC0(&FUNC1(sk)->accept_q);

	sk->sk_destruct = sco_sock_destruct;
	sk->sk_sndtimeo = SCO_CONN_TIMEOUT;

	FUNC6(sk, SOCK_ZAPPED);

	sk->sk_protocol = proto;
	sk->sk_state    = BT_OPEN;

	FUNC3(sk)->setting = BT_VOICE_CVSD_16BIT;

	FUNC7(&sk->sk_timer, sco_sock_timeout, 0);

	FUNC2(&sco_sk_list, sk);
	return sk;
}