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
typedef  int u32 ;
struct tipc_sock {int /*<<< orphan*/  sk; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; int /*<<< orphan*/  nlh; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TIPC_NLA_SOCK ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_MAX ; 
 size_t TIPC_NLA_SOCK_REF ; 
 int FUNC0 (struct sk_buff*,struct netlink_callback*,struct tipc_sock*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_nl_sock_policy ; 
 int FUNC7 (int /*<<< orphan*/ ,struct nlattr***) ; 
 struct tipc_sock* FUNC8 (struct net*,int) ; 

int FUNC9(struct sk_buff *skb, struct netlink_callback *cb)
{
	int err;
	u32 tsk_portid = cb->args[0];
	u32 last_publ = cb->args[1];
	u32 done = cb->args[2];
	struct net *net = FUNC5(skb->sk);
	struct tipc_sock *tsk;

	if (!tsk_portid) {
		struct nlattr **attrs;
		struct nlattr *sock[TIPC_NLA_SOCK_MAX + 1];

		err = FUNC7(cb->nlh, &attrs);
		if (err)
			return err;

		if (!attrs[TIPC_NLA_SOCK])
			return -EINVAL;

		err = FUNC3(sock, TIPC_NLA_SOCK_MAX,
						  attrs[TIPC_NLA_SOCK],
						  tipc_nl_sock_policy, NULL);
		if (err)
			return err;

		if (!sock[TIPC_NLA_SOCK_REF])
			return -EINVAL;

		tsk_portid = FUNC2(sock[TIPC_NLA_SOCK_REF]);
	}

	if (done)
		return 0;

	tsk = FUNC8(net, tsk_portid);
	if (!tsk)
		return -EINVAL;

	FUNC1(&tsk->sk);
	err = FUNC0(skb, cb, tsk, &last_publ);
	if (!err)
		done = 1;
	FUNC4(&tsk->sk);
	FUNC6(&tsk->sk);

	cb->args[0] = tsk_portid;
	cb->args[1] = last_publ;
	cb->args[2] = done;

	return skb->len;
}