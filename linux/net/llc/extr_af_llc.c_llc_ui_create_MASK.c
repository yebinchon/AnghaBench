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
struct socket {scalar_t__ type; } ;
struct sock {int dummy; } ;
struct net {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_RAW ; 
 int EAFNOSUPPORT ; 
 int ENOMEM ; 
 int EPERM ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_LLC ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  init_net ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  llc_proto ; 
 struct sock* FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct socket *sock, int protocol,
			 int kern)
{
	struct sock *sk;
	int rc = -ESOCKTNOSUPPORT;

	if (!FUNC4(net->user_ns, CAP_NET_RAW))
		return -EPERM;

	if (!FUNC3(net, &init_net))
		return -EAFNOSUPPORT;

	if (FUNC0(sock->type == SOCK_DGRAM || sock->type == SOCK_STREAM)) {
		rc = -ENOMEM;
		sk = FUNC1(net, PF_LLC, GFP_KERNEL, &llc_proto, kern);
		if (sk) {
			rc = 0;
			FUNC2(sock, sk);
		}
	}
	return rc;
}