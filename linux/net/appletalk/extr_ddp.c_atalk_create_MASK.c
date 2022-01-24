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
struct socket {scalar_t__ type; int /*<<< orphan*/ * ops; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_RAW ; 
 int EAFNOSUPPORT ; 
 int ENOMEM ; 
 int EPERM ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_APPLETALK ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  atalk_dgram_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ddp_proto ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ *) ; 
 struct sock* FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct socket *sock, int protocol,
			int kern)
{
	struct sock *sk;
	int rc = -ESOCKTNOSUPPORT;

	if (!FUNC1(net, &init_net))
		return -EAFNOSUPPORT;

	/*
	 * We permit SOCK_DGRAM and RAW is an extension. It is trivial to do
	 * and gives you the full ELAP frame. Should be handy for CAP 8)
	 */
	if (sock->type != SOCK_RAW && sock->type != SOCK_DGRAM)
		goto out;

	rc = -EPERM;
	if (sock->type == SOCK_RAW && !kern && !FUNC0(CAP_NET_RAW))
		goto out;

	rc = -ENOMEM;
	sk = FUNC2(net, PF_APPLETALK, GFP_KERNEL, &ddp_proto, kern);
	if (!sk)
		goto out;
	rc = 0;
	sock->ops = &atalk_dgram_ops;
	FUNC3(sock, sk);

	/* Checksums on by default */
	FUNC4(sk, SOCK_ZAPPED);
out:
	return rc;
}