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
struct sock {size_t sk_protocol; int /*<<< orphan*/  sk_write_queue; } ;
struct netlink_sock {int ngroups; int /*<<< orphan*/  rcu; int /*<<< orphan*/  module; scalar_t__ portid; scalar_t__ bound; int /*<<< orphan*/  wait; int /*<<< orphan*/  (* netlink_unbind ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  groups; } ;
struct netlink_notify {size_t protocol; scalar_t__ portid; int /*<<< orphan*/  net; } ;
struct listeners {int dummy; } ;
struct TYPE_2__ {scalar_t__ registered; scalar_t__ flags; int /*<<< orphan*/ * unbind; int /*<<< orphan*/ * bind; int /*<<< orphan*/ * module; int /*<<< orphan*/  listeners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t NETLINK_GENERIC ; 
 int /*<<< orphan*/  NETLINK_URELEASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_notify*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  deferred_put_nlk_sk ; 
 int /*<<< orphan*/  genl_sk_destructing_cnt ; 
 int /*<<< orphan*/  genl_sk_destructing_waitq ; 
 int /*<<< orphan*/  FUNC5 (struct listeners*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlink_chain ; 
 scalar_t__ FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  netlink_proto ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct listeners* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* nl_table ; 
 struct netlink_sock* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct netlink_sock *nlk;

	if (!sk)
		return 0;

	FUNC10(sk);
	FUNC17(sk);
	nlk = FUNC14(sk);

	/*
	 * OK. Socket is unlinked, any packets that arrive now
	 * will be purged.
	 */

	/* must not acquire netlink_table_lock in any way again before unbind
	 * and notifying genetlink is done as otherwise it might deadlock
	 */
	if (nlk->netlink_unbind) {
		int i;

		for (i = 0; i < nlk->ngroups; i++)
			if (FUNC20(i, nlk->groups))
				nlk->netlink_unbind(FUNC16(sk), i + 1);
	}
	if (sk->sk_protocol == NETLINK_GENERIC &&
	    FUNC2(&genl_sk_destructing_cnt) == 0)
		FUNC21(&genl_sk_destructing_waitq);

	sock->sk = NULL;
	FUNC22(&nlk->wait);

	FUNC15(&sk->sk_write_queue);

	if (nlk->portid && nlk->bound) {
		struct netlink_notify n = {
						.net = FUNC16(sk),
						.protocol = sk->sk_protocol,
						.portid = nlk->portid,
					  };
		FUNC3(&netlink_chain,
				NETLINK_URELEASE, &n);
	}

	FUNC8(nlk->module);

	if (FUNC9(sk)) {
		FUNC11();
		FUNC0(nl_table[sk->sk_protocol].registered == 0);
		if (--nl_table[sk->sk_protocol].registered == 0) {
			struct listeners *old;

			old = FUNC13(nl_table[sk->sk_protocol].listeners);
			FUNC1(nl_table[sk->sk_protocol].listeners, NULL);
			FUNC5(old, rcu);
			nl_table[sk->sk_protocol].module = NULL;
			nl_table[sk->sk_protocol].bind = NULL;
			nl_table[sk->sk_protocol].unbind = NULL;
			nl_table[sk->sk_protocol].flags = 0;
			nl_table[sk->sk_protocol].registered = 0;
		}
		FUNC12();
	}

	FUNC6();
	FUNC18(FUNC16(sk), &netlink_proto, -1);
	FUNC7();
	FUNC4(&nlk->rcu, deferred_put_nlk_sk);
	return 0;
}