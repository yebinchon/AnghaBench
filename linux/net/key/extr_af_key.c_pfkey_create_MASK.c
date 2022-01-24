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
struct sock {int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_family; } ;
struct pfkey_sock {int /*<<< orphan*/  dump_lock; } ;
struct netns_pfkey {int /*<<< orphan*/  socks_nr; } ;
struct net {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENOMEM ; 
 int EPERM ; 
 int EPROTONOSUPPORT ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_KEY ; 
 int PF_KEY_V2 ; 
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_proto ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct netns_pfkey* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  pfkey_net_id ; 
 int /*<<< orphan*/  pfkey_ops ; 
 struct pfkey_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  pfkey_sock_destruct ; 
 struct sock* FUNC6 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct sock*) ; 

__attribute__((used)) static int FUNC8(struct net *net, struct socket *sock, int protocol,
			int kern)
{
	struct netns_pfkey *net_pfkey = FUNC2(net, pfkey_net_id);
	struct sock *sk;
	struct pfkey_sock *pfk;
	int err;

	if (!FUNC3(net->user_ns, CAP_NET_ADMIN))
		return -EPERM;
	if (sock->type != SOCK_RAW)
		return -ESOCKTNOSUPPORT;
	if (protocol != PF_KEY_V2)
		return -EPROTONOSUPPORT;

	err = -ENOMEM;
	sk = FUNC6(net, PF_KEY, GFP_KERNEL, &key_proto, kern);
	if (sk == NULL)
		goto out;

	pfk = FUNC5(sk);
	FUNC1(&pfk->dump_lock);

	sock->ops = &pfkey_ops;
	FUNC7(sock, sk);

	sk->sk_family = PF_KEY;
	sk->sk_destruct = pfkey_sock_destruct;

	FUNC0(&net_pfkey->socks_nr);

	FUNC4(sk);

	return 0;
out:
	return err;
}