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
struct tipc_nl_msg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct tipc_net {struct tipc_link* bcl; } ;
struct tipc_link {int window; int /*<<< orphan*/  stats; int /*<<< orphan*/  name; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int BCLINK_MODE_SEL ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  TIPC_NLA_LINK ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_BROADCAST ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_NAME ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_PROP ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_RX ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_TX ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_UP ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_BROADCAST ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_BROADCAST_RATIO ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_WIN ; 
 int /*<<< orphan*/  TIPC_NL_LINK_GET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct nlattr*) ; 
 struct nlattr* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct net*) ; 
 int FUNC12 (struct net*) ; 
 int /*<<< orphan*/  FUNC13 (struct net*) ; 
 int /*<<< orphan*/  FUNC14 (struct net*) ; 
 int /*<<< orphan*/  tipc_genl_family ; 
 int /*<<< orphan*/  tipc_net_id ; 

int FUNC15(struct net *net, struct tipc_nl_msg *msg)
{
	int err;
	void *hdr;
	struct nlattr *attrs;
	struct nlattr *prop;
	struct tipc_net *tn = FUNC4(net, tipc_net_id);
	u32 bc_mode = FUNC11(net);
	u32 bc_ratio = FUNC12(net);
	struct tipc_link *bcl = tn->bcl;

	if (!bcl)
		return 0;

	FUNC13(net);

	hdr = FUNC3(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
			  NLM_F_MULTI, TIPC_NL_LINK_GET);
	if (!hdr) {
		FUNC14(net);
		return -EMSGSIZE;
	}

	attrs = FUNC7(msg->skb, TIPC_NLA_LINK);
	if (!attrs)
		goto msg_full;

	/* The broadcast link is always up */
	if (FUNC8(msg->skb, TIPC_NLA_LINK_UP))
		goto attr_msg_full;

	if (FUNC8(msg->skb, TIPC_NLA_LINK_BROADCAST))
		goto attr_msg_full;
	if (FUNC9(msg->skb, TIPC_NLA_LINK_NAME, bcl->name))
		goto attr_msg_full;
	if (FUNC10(msg->skb, TIPC_NLA_LINK_RX, 0))
		goto attr_msg_full;
	if (FUNC10(msg->skb, TIPC_NLA_LINK_TX, 0))
		goto attr_msg_full;

	prop = FUNC7(msg->skb, TIPC_NLA_LINK_PROP);
	if (!prop)
		goto attr_msg_full;
	if (FUNC10(msg->skb, TIPC_NLA_PROP_WIN, bcl->window))
		goto prop_msg_full;
	if (FUNC10(msg->skb, TIPC_NLA_PROP_BROADCAST, bc_mode))
		goto prop_msg_full;
	if (bc_mode & BCLINK_MODE_SEL)
		if (FUNC10(msg->skb, TIPC_NLA_PROP_BROADCAST_RATIO,
				bc_ratio))
			goto prop_msg_full;
	FUNC6(msg->skb, prop);

	err = FUNC0(msg->skb, &bcl->stats);
	if (err)
		goto attr_msg_full;

	FUNC14(net);
	FUNC6(msg->skb, attrs);
	FUNC2(msg->skb, hdr);

	return 0;

prop_msg_full:
	FUNC5(msg->skb, prop);
attr_msg_full:
	FUNC5(msg->skb, attrs);
msg_full:
	FUNC14(net);
	FUNC1(msg->skb, hdr);

	return -EMSGSIZE;
}