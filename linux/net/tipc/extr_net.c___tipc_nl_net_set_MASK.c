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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct tipc_net {int net_id; int legacy_addr_format; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  extack; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int NODE_ID_LEN ; 
 size_t TIPC_NLA_NET ; 
 size_t TIPC_NLA_NET_ADDR ; 
 size_t TIPC_NLA_NET_ID ; 
 int /*<<< orphan*/  TIPC_NLA_NET_MAX ; 
 size_t TIPC_NLA_NET_NODEID ; 
 size_t TIPC_NLA_NET_NODEID_W1 ; 
 int FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  tipc_nl_net_policy ; 
 scalar_t__ FUNC6 (struct net*) ; 

int FUNC7(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
	struct net *net = FUNC3(skb->sk);
	struct tipc_net *tn = FUNC4(net);
	int err;

	if (!info->attrs[TIPC_NLA_NET])
		return -EINVAL;

	err = FUNC2(attrs, TIPC_NLA_NET_MAX,
					  info->attrs[TIPC_NLA_NET],
					  tipc_nl_net_policy, info->extack);

	if (err)
		return err;

	/* Can't change net id once TIPC has joined a network */
	if (FUNC6(net))
		return -EPERM;

	if (attrs[TIPC_NLA_NET_ID]) {
		u32 val;

		val = FUNC0(attrs[TIPC_NLA_NET_ID]);
		if (val < 1 || val > 9999)
			return -EINVAL;

		tn->net_id = val;
	}

	if (attrs[TIPC_NLA_NET_ADDR]) {
		u32 addr;

		addr = FUNC0(attrs[TIPC_NLA_NET_ADDR]);
		if (!addr)
			return -EINVAL;
		tn->legacy_addr_format = true;
		FUNC5(net, NULL, addr);
	}

	if (attrs[TIPC_NLA_NET_NODEID]) {
		u8 node_id[NODE_ID_LEN];
		u64 *w0 = (u64 *)&node_id[0];
		u64 *w1 = (u64 *)&node_id[8];

		if (!attrs[TIPC_NLA_NET_NODEID_W1])
			return -EINVAL;
		*w0 = FUNC1(attrs[TIPC_NLA_NET_NODEID]);
		*w1 = FUNC1(attrs[TIPC_NLA_NET_NODEID_W1]);
		FUNC5(net, node_id, 0);
	}
	return 0;
}