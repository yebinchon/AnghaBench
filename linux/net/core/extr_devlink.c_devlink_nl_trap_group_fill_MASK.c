#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct devlink_trap_group_item {int /*<<< orphan*/  stats; TYPE_1__* group; } ;
struct devlink {int dummy; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;
struct TYPE_2__ {scalar_t__ generic; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_TRAP_GENERIC ; 
 int /*<<< orphan*/  DEVLINK_ATTR_TRAP_GROUP_NAME ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  devlink_nl_family ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct devlink*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct sk_buff *msg, struct devlink *devlink,
			   const struct devlink_trap_group_item *group_item,
			   enum devlink_command cmd, u32 portid, u32 seq,
			   int flags)
{
	void *hdr;
	int err;

	hdr = FUNC4(msg, portid, seq, &devlink_nl_family, flags, cmd);
	if (!hdr)
		return -EMSGSIZE;

	if (FUNC0(msg, devlink))
		goto nla_put_failure;

	if (FUNC6(msg, DEVLINK_ATTR_TRAP_GROUP_NAME,
			   group_item->group->name))
		goto nla_put_failure;

	if (group_item->group->generic &&
	    FUNC5(msg, DEVLINK_ATTR_TRAP_GENERIC))
		goto nla_put_failure;

	err = FUNC1(msg, group_item->stats);
	if (err)
		goto nla_put_failure;

	FUNC3(msg, hdr);

	return 0;

nla_put_failure:
	FUNC2(msg, hdr);
	return -EMSGSIZE;
}