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
struct tipc_nl_compat_msg {int /*<<< orphan*/  rep; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TIPC_NLA_CON_FLAG ; 
 size_t TIPC_NLA_CON_INST ; 
 int /*<<< orphan*/  TIPC_NLA_CON_MAX ; 
 size_t TIPC_NLA_CON_NODE ; 
 size_t TIPC_NLA_CON_SOCK ; 
 size_t TIPC_NLA_CON_TYPE ; 
 size_t TIPC_NLA_SOCK ; 
 size_t TIPC_NLA_SOCK_CON ; 
 size_t TIPC_NLA_SOCK_HAS_PUBL ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_MAX ; 
 size_t TIPC_NLA_SOCK_REF ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tipc_nl_compat_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct tipc_nl_compat_msg *msg,
				  struct nlattr **attrs)
{
	int err;
	u32 sock_ref;
	struct nlattr *sock[TIPC_NLA_SOCK_MAX + 1];

	if (!attrs[TIPC_NLA_SOCK])
		return -EINVAL;

	err = FUNC1(sock, TIPC_NLA_SOCK_MAX,
					  attrs[TIPC_NLA_SOCK], NULL, NULL);
	if (err)
		return err;

	sock_ref = FUNC0(sock[TIPC_NLA_SOCK_REF]);
	FUNC5(msg->rep, "%u:", sock_ref);

	if (sock[TIPC_NLA_SOCK_CON]) {
		u32 node;
		struct nlattr *con[TIPC_NLA_CON_MAX + 1];

		err = FUNC1(con, TIPC_NLA_CON_MAX,
						  sock[TIPC_NLA_SOCK_CON],
						  NULL, NULL);

		if (err)
			return err;

		node = FUNC0(con[TIPC_NLA_CON_NODE]);
		FUNC5(msg->rep, "  connected to <%u.%u.%u:%u>",
				 FUNC6(node),
				 FUNC2(node),
				 FUNC4(node),
				 FUNC0(con[TIPC_NLA_CON_SOCK]));

		if (con[TIPC_NLA_CON_FLAG])
			FUNC5(msg->rep, " via {%u,%u}\n",
					 FUNC0(con[TIPC_NLA_CON_TYPE]),
					 FUNC0(con[TIPC_NLA_CON_INST]));
		else
			FUNC5(msg->rep, "\n");
	} else if (sock[TIPC_NLA_SOCK_HAS_PUBL]) {
		FUNC5(msg->rep, " bound to");

		err = FUNC3(msg, sock_ref);
		if (err)
			return err;
	}
	FUNC5(msg->rep, "\n");

	return 0;
}