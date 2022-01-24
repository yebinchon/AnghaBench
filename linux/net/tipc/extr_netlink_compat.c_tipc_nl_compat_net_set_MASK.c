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
struct tipc_nl_compat_msg {scalar_t__ cmd; int /*<<< orphan*/  req; } ;
struct tipc_nl_compat_cmd_doit {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EMSGSIZE ; 
 scalar_t__ TIPC_CMD_SET_NETID ; 
 scalar_t__ TIPC_CMD_SET_NODE_ADDR ; 
 int /*<<< orphan*/  TIPC_NLA_NET ; 
 int /*<<< orphan*/  TIPC_NLA_NET_ADDR ; 
 int /*<<< orphan*/  TIPC_NLA_NET_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tipc_nl_compat_cmd_doit *cmd,
				  struct sk_buff *skb,
				  struct tipc_nl_compat_msg *msg)
{
	u32 val;
	struct nlattr *net;

	val = FUNC4(*(__be32 *)FUNC0(msg->req));

	net = FUNC2(skb, TIPC_NLA_NET);
	if (!net)
		return -EMSGSIZE;

	if (msg->cmd == TIPC_CMD_SET_NODE_ADDR) {
		if (FUNC3(skb, TIPC_NLA_NET_ADDR, val))
			return -EMSGSIZE;
	} else if (msg->cmd == TIPC_CMD_SET_NETID) {
		if (FUNC3(skb, TIPC_NLA_NET_ID, val))
			return -EMSGSIZE;
	}
	FUNC1(skb, net);

	return 0;
}