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
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_data_ready; } ;
struct netlink_sock {int /*<<< orphan*/  flags; scalar_t__ netlink_rcv; } ;
struct netlink_kernel_cfg {int groups; scalar_t__ compare; int /*<<< orphan*/  flags; int /*<<< orphan*/  unbind; int /*<<< orphan*/  bind; scalar_t__ input; struct mutex* cb_mutex; } ;
struct net {int dummy; } ;
struct mutex {int dummy; } ;
struct module {int dummy; } ;
struct listeners {int dummy; } ;
struct TYPE_2__ {int registered; unsigned int groups; scalar_t__ compare; int /*<<< orphan*/  flags; int /*<<< orphan*/  unbind; int /*<<< orphan*/  bind; struct module* module; struct mutex* cb_mutex; int /*<<< orphan*/  listeners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_LINKS ; 
 int /*<<< orphan*/  NETLINK_F_KERNEL_SOCKET ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  PF_NETLINK ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC2 (struct net*,struct socket*,struct mutex*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct listeners*) ; 
 struct listeners* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlink_data_ready ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* nl_table ; 
 struct netlink_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct listeners*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct socket**) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*) ; 

struct sock *
FUNC13(struct net *net, int unit, struct module *module,
			struct netlink_kernel_cfg *cfg)
{
	struct socket *sock;
	struct sock *sk;
	struct netlink_sock *nlk;
	struct listeners *listeners = NULL;
	struct mutex *cb_mutex = cfg ? cfg->cb_mutex : NULL;
	unsigned int groups;

	FUNC0(!nl_table);

	if (unit < 0 || unit >= MAX_LINKS)
		return NULL;

	if (FUNC11(PF_NETLINK, SOCK_DGRAM, unit, &sock))
		return NULL;

	if (FUNC2(net, sock, cb_mutex, unit, 1) < 0)
		goto out_sock_release_nosk;

	sk = sock->sk;

	if (!cfg || cfg->groups < 32)
		groups = 32;
	else
		groups = cfg->groups;

	listeners = FUNC4(sizeof(*listeners) + FUNC1(groups), GFP_KERNEL);
	if (!listeners)
		goto out_sock_release;

	sk->sk_data_ready = netlink_data_ready;
	if (cfg && cfg->input)
		FUNC9(sk)->netlink_rcv = cfg->input;

	if (FUNC5(sk, 0))
		goto out_sock_release;

	nlk = FUNC9(sk);
	nlk->flags |= NETLINK_F_KERNEL_SOCKET;

	FUNC7();
	if (!nl_table[unit].registered) {
		nl_table[unit].groups = groups;
		FUNC10(nl_table[unit].listeners, listeners);
		nl_table[unit].cb_mutex = cb_mutex;
		nl_table[unit].module = module;
		if (cfg) {
			nl_table[unit].bind = cfg->bind;
			nl_table[unit].unbind = cfg->unbind;
			nl_table[unit].flags = cfg->flags;
			if (cfg->compare)
				nl_table[unit].compare = cfg->compare;
		}
		nl_table[unit].registered = 1;
	} else {
		FUNC3(listeners);
		nl_table[unit].registered++;
	}
	FUNC8();
	return sk;

out_sock_release:
	FUNC3(listeners);
	FUNC6(sk);
	return NULL;

out_sock_release_nosk:
	FUNC12(sock);
	return NULL;
}