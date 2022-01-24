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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_node {scalar_t__ state; } ;
struct tipc_net {int /*<<< orphan*/  node_list_lock; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  extack; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int ENXIO ; 
 scalar_t__ SELF_DOWN_PEER_DOWN ; 
 scalar_t__ SELF_DOWN_PEER_LEAVING ; 
 size_t TIPC_NLA_NET ; 
 size_t TIPC_NLA_NET_ADDR ; 
 int /*<<< orphan*/  TIPC_NLA_NET_MAX ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_net_id ; 
 int /*<<< orphan*/  tipc_nl_net_policy ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_node*) ; 
 struct tipc_node* FUNC9 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_node*) ; 

int FUNC13(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC4(skb->sk);
	struct tipc_net *tn = FUNC1(net, tipc_net_id);
	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
	struct tipc_node *peer;
	u32 addr;
	int err;

	/* We identify the peer by its net */
	if (!info->attrs[TIPC_NLA_NET])
		return -EINVAL;

	err = FUNC3(attrs, TIPC_NLA_NET_MAX,
					  info->attrs[TIPC_NLA_NET],
					  tipc_nl_net_policy, info->extack);
	if (err)
		return err;

	if (!attrs[TIPC_NLA_NET_ADDR])
		return -EINVAL;

	addr = FUNC2(attrs[TIPC_NLA_NET_ADDR]);

	if (FUNC0(net, addr))
		return -ENOTSUPP;

	FUNC5(&tn->node_list_lock);
	peer = FUNC9(net, addr);
	if (!peer) {
		FUNC6(&tn->node_list_lock);
		return -ENXIO;
	}

	FUNC11(peer);
	if (peer->state != SELF_DOWN_PEER_DOWN &&
	    peer->state != SELF_DOWN_PEER_LEAVING) {
		FUNC12(peer);
		err = -EBUSY;
		goto err_out;
	}

	FUNC7(peer);
	FUNC12(peer);
	FUNC8(peer);

	err = 0;
err_out:
	FUNC10(peer);
	FUNC6(&tn->node_list_lock);

	return err;
}