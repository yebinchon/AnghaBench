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
struct socket {scalar_t__ type; int /*<<< orphan*/ * sk; } ;
struct sockaddr_atmsvc {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_state_change; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int max_sdu; } ;
struct TYPE_4__ {TYPE_1__ txtp; } ;
struct atm_vcc {scalar_t__ aal_options; scalar_t__ atm_options; scalar_t__ vci; scalar_t__ vpi; int /*<<< orphan*/ * release_cb; int /*<<< orphan*/ * push_oam; int /*<<< orphan*/ * owner; int /*<<< orphan*/ * pop; int /*<<< orphan*/ * push; TYPE_2__ qos; int /*<<< orphan*/  remote; int /*<<< orphan*/  local; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SOCK_STREAM ; 
 struct atm_vcc* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct sock* FUNC4 (struct net*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  vcc_def_wakeup ; 
 int /*<<< orphan*/  vcc_proto ; 
 int /*<<< orphan*/  vcc_sock_destruct ; 
 int /*<<< orphan*/  vcc_write_space ; 

int FUNC6(struct net *net, struct socket *sock, int protocol, int family, int kern)
{
	struct sock *sk;
	struct atm_vcc *vcc;

	sock->sk = NULL;
	if (sock->type == SOCK_STREAM)
		return -EINVAL;
	sk = FUNC4(net, family, GFP_KERNEL, &vcc_proto, kern);
	if (!sk)
		return -ENOMEM;
	FUNC5(sock, sk);
	sk->sk_state_change = vcc_def_wakeup;
	sk->sk_write_space = vcc_write_space;

	vcc = FUNC0(sk);
	vcc->dev = NULL;
	FUNC2(&vcc->local, 0, sizeof(struct sockaddr_atmsvc));
	FUNC2(&vcc->remote, 0, sizeof(struct sockaddr_atmsvc));
	vcc->qos.txtp.max_sdu = 1 << 16; /* for meta VCs */
	FUNC3(&sk->sk_wmem_alloc, 1);
	FUNC1(&sk->sk_rmem_alloc, 0);
	vcc->push = NULL;
	vcc->pop = NULL;
	vcc->owner = NULL;
	vcc->push_oam = NULL;
	vcc->release_cb = NULL;
	vcc->vpi = vcc->vci = 0; /* no VCI/VPI yet */
	vcc->atm_options = vcc->aal_options = 0;
	sk->sk_destruct = vcc_sock_destruct;
	return 0;
}