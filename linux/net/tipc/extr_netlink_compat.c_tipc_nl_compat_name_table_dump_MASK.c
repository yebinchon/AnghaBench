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
struct tipc_nl_compat_msg {int /*<<< orphan*/  rep; int /*<<< orphan*/  req; } ;
struct tipc_name_table_query {int /*<<< orphan*/  upbound; int /*<<< orphan*/  lowbound; int /*<<< orphan*/  type; int /*<<< orphan*/  depth; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TIPC_NLA_NAME_TABLE ; 
 int /*<<< orphan*/  TIPC_NLA_NAME_TABLE_MAX ; 
 size_t TIPC_NLA_NAME_TABLE_PUBL ; 
 size_t TIPC_NLA_PUBL_KEY ; 
 size_t TIPC_NLA_PUBL_LOWER ; 
 int /*<<< orphan*/  TIPC_NLA_PUBL_MAX ; 
 size_t TIPC_NLA_PUBL_NODE ; 
 size_t TIPC_NLA_PUBL_REF ; 
 size_t TIPC_NLA_PUBL_SCOPE ; 
 size_t TIPC_NLA_PUBL_TYPE ; 
 size_t TIPC_NLA_PUBL_UPPER ; 
 int TIPC_NTQ_ALLTYPES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,int,size_t) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct tipc_nl_compat_msg *msg,
					  struct nlattr **attrs)
{
	char port_str[27];
	struct tipc_name_table_query *ntq;
	struct nlattr *nt[TIPC_NLA_NAME_TABLE_MAX + 1];
	struct nlattr *publ[TIPC_NLA_PUBL_MAX + 1];
	u32 node, depth, type, lowbound, upbound;
	static const char * const scope_str[] = {"", " zone", " cluster",
						 " node"};
	int err;

	if (!attrs[TIPC_NLA_NAME_TABLE])
		return -EINVAL;

	err = FUNC2(nt, TIPC_NLA_NAME_TABLE_MAX,
					  attrs[TIPC_NLA_NAME_TABLE], NULL,
					  NULL);
	if (err)
		return err;

	if (!nt[TIPC_NLA_NAME_TABLE_PUBL])
		return -EINVAL;

	err = FUNC2(publ, TIPC_NLA_PUBL_MAX,
					  nt[TIPC_NLA_NAME_TABLE_PUBL], NULL,
					  NULL);
	if (err)
		return err;

	ntq = (struct tipc_name_table_query *)FUNC0(msg->req);

	depth = FUNC3(ntq->depth);
	type = FUNC3(ntq->type);
	lowbound = FUNC3(ntq->lowbound);
	upbound = FUNC3(ntq->upbound);

	if (!(depth & TIPC_NTQ_ALLTYPES) &&
	    (type != FUNC1(publ[TIPC_NLA_PUBL_TYPE])))
		return 0;
	if (lowbound && (lowbound > FUNC1(publ[TIPC_NLA_PUBL_UPPER])))
		return 0;
	if (upbound && (upbound < FUNC1(publ[TIPC_NLA_PUBL_LOWER])))
		return 0;

	FUNC7(msg->rep, "%-10u ",
			 FUNC1(publ[TIPC_NLA_PUBL_TYPE]));

	if (depth == 1)
		goto out;

	FUNC7(msg->rep, "%-10u %-10u ",
			 FUNC1(publ[TIPC_NLA_PUBL_LOWER]),
			 FUNC1(publ[TIPC_NLA_PUBL_UPPER]));

	if (depth == 2)
		goto out;

	node = FUNC1(publ[TIPC_NLA_PUBL_NODE]);
	FUNC4(port_str, "<%u.%u.%u:%u>", FUNC8(node), FUNC5(node),
		FUNC6(node), FUNC1(publ[TIPC_NLA_PUBL_REF]));
	FUNC7(msg->rep, "%-26s ", port_str);

	if (depth == 3)
		goto out;

	FUNC7(msg->rep, "%-10u %s",
			 FUNC1(publ[TIPC_NLA_PUBL_KEY]),
			 scope_str[FUNC1(publ[TIPC_NLA_PUBL_SCOPE])]);
out:
	FUNC7(msg->rep, "\n");

	return 0;
}