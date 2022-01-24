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
struct net_dm_hw_entries {int num_entries; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NET_DM_ATTR_HW_ENTRIES ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *msg,
				 const struct net_dm_hw_entries *hw_entries)
{
	struct nlattr *attr;
	int i;

	attr = FUNC3(msg, NET_DM_ATTR_HW_ENTRIES);
	if (!attr)
		return -EMSGSIZE;

	for (i = 0; i < hw_entries->num_entries; i++) {
		int rc;

		rc = FUNC0(msg, &hw_entries->entries[i]);
		if (rc)
			goto nla_put_failure;
	}

	FUNC2(msg, attr);

	return 0;

nla_put_failure:
	FUNC1(msg, attr);
	return -EMSGSIZE;
}