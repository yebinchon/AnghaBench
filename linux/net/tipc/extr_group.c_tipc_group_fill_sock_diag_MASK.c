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
struct tipc_group {scalar_t__ scope; scalar_t__* open; int /*<<< orphan*/  bc_snd_nxt; int /*<<< orphan*/  instance; int /*<<< orphan*/  type; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 scalar_t__ TIPC_CLUSTER_SCOPE ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_GROUP ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_GROUP_BC_SEND_NEXT ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_GROUP_CLUSTER_SCOPE ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_GROUP_ID ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_GROUP_INSTANCE ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_GROUP_NODE_SCOPE ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_GROUP_OPEN ; 
 scalar_t__ TIPC_NODE_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct tipc_group *grp, struct sk_buff *skb)
{
	struct nlattr *group = FUNC2(skb, TIPC_NLA_SOCK_GROUP);

	if (!group)
		return -EMSGSIZE;

	if (FUNC4(skb, TIPC_NLA_SOCK_GROUP_ID,
			grp->type) ||
	    FUNC4(skb, TIPC_NLA_SOCK_GROUP_INSTANCE,
			grp->instance) ||
	    FUNC4(skb, TIPC_NLA_SOCK_GROUP_BC_SEND_NEXT,
			grp->bc_snd_nxt))
		goto group_msg_cancel;

	if (grp->scope == TIPC_NODE_SCOPE)
		if (FUNC3(skb, TIPC_NLA_SOCK_GROUP_NODE_SCOPE))
			goto group_msg_cancel;

	if (grp->scope == TIPC_CLUSTER_SCOPE)
		if (FUNC3(skb, TIPC_NLA_SOCK_GROUP_CLUSTER_SCOPE))
			goto group_msg_cancel;

	if (*grp->open)
		if (FUNC3(skb, TIPC_NLA_SOCK_GROUP_OPEN))
			goto group_msg_cancel;

	FUNC1(skb, group);
	return 0;

group_msg_cancel:
	FUNC0(skb, group);
	return -1;
}