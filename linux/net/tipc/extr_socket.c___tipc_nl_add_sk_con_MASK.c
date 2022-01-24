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
typedef  scalar_t__ u32 ;
struct tipc_sock {scalar_t__ conn_type; scalar_t__ conn_instance; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TIPC_NLA_CON_FLAG ; 
 int /*<<< orphan*/  TIPC_NLA_CON_INST ; 
 int /*<<< orphan*/  TIPC_NLA_CON_NODE ; 
 int /*<<< orphan*/  TIPC_NLA_CON_SOCK ; 
 int /*<<< orphan*/  TIPC_NLA_CON_TYPE ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_CON ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct tipc_sock*) ; 
 scalar_t__ FUNC6 (struct tipc_sock*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct tipc_sock *tsk)
{
	u32 peer_node;
	u32 peer_port;
	struct nlattr *nest;

	peer_node = FUNC5(tsk);
	peer_port = FUNC6(tsk);

	nest = FUNC2(skb, TIPC_NLA_SOCK_CON);
	if (!nest)
		return -EMSGSIZE;

	if (FUNC4(skb, TIPC_NLA_CON_NODE, peer_node))
		goto msg_full;
	if (FUNC4(skb, TIPC_NLA_CON_SOCK, peer_port))
		goto msg_full;

	if (tsk->conn_type != 0) {
		if (FUNC3(skb, TIPC_NLA_CON_FLAG))
			goto msg_full;
		if (FUNC4(skb, TIPC_NLA_CON_TYPE, tsk->conn_type))
			goto msg_full;
		if (FUNC4(skb, TIPC_NLA_CON_INST, tsk->conn_instance))
			goto msg_full;
	}
	FUNC1(skb, nest);

	return 0;

msg_full:
	FUNC0(skb, nest);

	return -EMSGSIZE;
}