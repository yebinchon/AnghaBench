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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_dm_hw_entry {int /*<<< orphan*/  count; int /*<<< orphan*/  trap_name; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NET_DM_ATTR_HW_ENTRY ; 
 int /*<<< orphan*/  NET_DM_ATTR_HW_TRAP_COUNT ; 
 int /*<<< orphan*/  NET_DM_ATTR_HW_TRAP_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *msg,
			       const struct net_dm_hw_entry *hw_entry)
{
	struct nlattr *attr;

	attr = FUNC2(msg, NET_DM_ATTR_HW_ENTRY);
	if (!attr)
		return -EMSGSIZE;

	if (FUNC3(msg, NET_DM_ATTR_HW_TRAP_NAME, hw_entry->trap_name))
		goto nla_put_failure;

	if (FUNC4(msg, NET_DM_ATTR_HW_TRAP_COUNT, hw_entry->count))
		goto nla_put_failure;

	FUNC1(msg, attr);

	return 0;

nla_put_failure:
	FUNC0(msg, attr);
	return -EMSGSIZE;
}