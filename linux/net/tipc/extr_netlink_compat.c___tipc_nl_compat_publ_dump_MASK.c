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
struct tipc_nl_compat_msg {int /*<<< orphan*/  rep; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TIPC_NLA_PUBL ; 
 size_t TIPC_NLA_PUBL_LOWER ; 
 int /*<<< orphan*/  TIPC_NLA_PUBL_MAX ; 
 size_t TIPC_NLA_PUBL_TYPE ; 
 size_t TIPC_NLA_PUBL_UPPER ; 
 scalar_t__ FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,...) ; 

__attribute__((used)) static int FUNC3(struct tipc_nl_compat_msg *msg,
				      struct nlattr **attrs)
{
	u32 type, lower, upper;
	struct nlattr *publ[TIPC_NLA_PUBL_MAX + 1];
	int err;

	if (!attrs[TIPC_NLA_PUBL])
		return -EINVAL;

	err = FUNC1(publ, TIPC_NLA_PUBL_MAX,
					  attrs[TIPC_NLA_PUBL], NULL, NULL);
	if (err)
		return err;

	type = FUNC0(publ[TIPC_NLA_PUBL_TYPE]);
	lower = FUNC0(publ[TIPC_NLA_PUBL_LOWER]);
	upper = FUNC0(publ[TIPC_NLA_PUBL_UPPER]);

	if (lower == upper)
		FUNC2(msg->rep, " {%u,%u}", type, lower);
	else
		FUNC2(msg->rep, " {%u,%u,%u}", type, lower, upper);

	return 0;
}