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
struct tipc_node {int /*<<< orphan*/  addr; } ;
struct tipc_nl_msg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  TIPC_NLA_NODE ; 
 int /*<<< orphan*/  TIPC_NLA_NODE_ADDR ; 
 int /*<<< orphan*/  TIPC_NLA_NODE_UP ; 
 int /*<<< orphan*/  TIPC_NL_NODE_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nlattr*) ; 
 struct nlattr* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct tipc_node*) ; 
 int /*<<< orphan*/  tipc_genl_family ; 

__attribute__((used)) static int FUNC9(struct tipc_nl_msg *msg, struct tipc_node *node)
{
	void *hdr;
	struct nlattr *attrs;

	hdr = FUNC2(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
			  NLM_F_MULTI, TIPC_NL_NODE_GET);
	if (!hdr)
		return -EMSGSIZE;

	attrs = FUNC5(msg->skb, TIPC_NLA_NODE);
	if (!attrs)
		goto msg_full;

	if (FUNC7(msg->skb, TIPC_NLA_NODE_ADDR, node->addr))
		goto attr_msg_full;
	if (FUNC8(node))
		if (FUNC6(msg->skb, TIPC_NLA_NODE_UP))
			goto attr_msg_full;

	FUNC4(msg->skb, attrs);
	FUNC1(msg->skb, hdr);

	return 0;

attr_msg_full:
	FUNC3(msg->skb, attrs);
msg_full:
	FUNC0(msg->skb, hdr);

	return -EMSGSIZE;
}