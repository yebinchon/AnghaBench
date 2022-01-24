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
struct sock {int sk_protocol; int /*<<< orphan*/  sk_state; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct socket*) ; 
 int /*<<< orphan*/  BT_OPEN ; 
 int ENOMEM ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  bnep_proto ; 
 int /*<<< orphan*/  bnep_sk_list ; 
 int /*<<< orphan*/  bnep_sock_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sock*) ; 
 struct sock* FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct socket *sock, int protocol,
			    int kern)
{
	struct sock *sk;

	FUNC0("sock %p", sock);

	if (sock->type != SOCK_RAW)
		return -ESOCKTNOSUPPORT;

	sk = FUNC2(net, PF_BLUETOOTH, GFP_ATOMIC, &bnep_proto, kern);
	if (!sk)
		return -ENOMEM;

	FUNC3(sock, sk);

	sock->ops = &bnep_sock_ops;

	sock->state = SS_UNCONNECTED;

	FUNC4(sk, SOCK_ZAPPED);

	sk->sk_protocol = protocol;
	sk->sk_state	= BT_OPEN;

	FUNC1(&bnep_sk_list, sk);
	return 0;
}