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
struct tipc_node_info {void* up; void* addr; } ;
struct tipc_nl_compat_msg {int /*<<< orphan*/  rep; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  node_info ;

/* Variables and functions */
 int EINVAL ; 
 size_t TIPC_NLA_NODE ; 
 size_t TIPC_NLA_NODE_ADDR ; 
 int /*<<< orphan*/  TIPC_NLA_NODE_MAX ; 
 size_t TIPC_NLA_NODE_UP ; 
 int /*<<< orphan*/  TIPC_TLV_NODE_INFO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tipc_node_info*,int) ; 

__attribute__((used)) static int FUNC5(struct tipc_nl_compat_msg *msg,
				    struct nlattr **attrs)
{
	struct tipc_node_info node_info;
	struct nlattr *node[TIPC_NLA_NODE_MAX + 1];
	int err;

	if (!attrs[TIPC_NLA_NODE])
		return -EINVAL;

	err = FUNC3(node, TIPC_NLA_NODE_MAX,
					  attrs[TIPC_NLA_NODE], NULL, NULL);
	if (err)
		return err;

	node_info.addr = FUNC0(FUNC2(node[TIPC_NLA_NODE_ADDR]));
	node_info.up = FUNC0(FUNC1(node[TIPC_NLA_NODE_UP]));

	return FUNC4(msg->rep, TIPC_TLV_NODE_INFO, &node_info,
			    sizeof(node_info));
}