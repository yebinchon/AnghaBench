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
struct socket {scalar_t__ type; int /*<<< orphan*/  state; int /*<<< orphan*/ * ops; } ;
struct sock {int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_protocol; } ;
struct nfc_protocol {int /*<<< orphan*/  id; int /*<<< orphan*/  proto; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int tx_work_scheduled; int /*<<< orphan*/  tx_work; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_NFC ; 
 scalar_t__ SOCK_RAW ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct socket*) ; 
 int /*<<< orphan*/  raw_sk_list ; 
 int /*<<< orphan*/  rawsock_destruct ; 
 int /*<<< orphan*/  rawsock_ops ; 
 int /*<<< orphan*/  rawsock_raw_ops ; 
 int /*<<< orphan*/  rawsock_tx_work ; 
 struct sock* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,struct sock*) ; 

__attribute__((used)) static int FUNC6(struct net *net, struct socket *sock,
			  const struct nfc_protocol *nfc_proto, int kern)
{
	struct sock *sk;

	FUNC3("sock=%p\n", sock);

	if ((sock->type != SOCK_SEQPACKET) && (sock->type != SOCK_RAW))
		return -ESOCKTNOSUPPORT;

	if (sock->type == SOCK_RAW)
		sock->ops = &rawsock_raw_ops;
	else
		sock->ops = &rawsock_ops;

	sk = FUNC4(net, PF_NFC, GFP_ATOMIC, nfc_proto->proto, kern);
	if (!sk)
		return -ENOMEM;

	FUNC5(sock, sk);
	sk->sk_protocol = nfc_proto->id;
	sk->sk_destruct = rawsock_destruct;
	sock->state = SS_UNCONNECTED;
	if (sock->type == SOCK_RAW)
		FUNC2(&raw_sk_list, sk);
	else {
		FUNC0(&FUNC1(sk)->tx_work, rawsock_tx_work);
		FUNC1(sk)->tx_work_scheduled = false;
	}

	return 0;
}