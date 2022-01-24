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
struct devlink_trap {int metadata_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_TRAP_METADATA ; 
 int /*<<< orphan*/  DEVLINK_ATTR_TRAP_METADATA_TYPE_IN_PORT ; 
 int DEVLINK_TRAP_METADATA_TYPE_F_IN_PORT ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *msg,
				     const struct devlink_trap *trap)
{
	struct nlattr *attr;

	attr = FUNC2(msg, DEVLINK_ATTR_TRAP_METADATA);
	if (!attr)
		return -EMSGSIZE;

	if ((trap->metadata_cap & DEVLINK_TRAP_METADATA_TYPE_F_IN_PORT) &&
	    FUNC3(msg, DEVLINK_ATTR_TRAP_METADATA_TYPE_IN_PORT))
		goto nla_put_failure;

	FUNC1(msg, attr);

	return 0;

nla_put_failure:
	FUNC0(msg, attr);
	return -EMSGSIZE;
}