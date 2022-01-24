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
struct devlink_snapshot {int /*<<< orphan*/  id; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_REGION_SNAPSHOT ; 
 int /*<<< orphan*/  DEVLINK_ATTR_REGION_SNAPSHOT_ID ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *msg,
					     struct devlink *devlink,
					     struct devlink_snapshot *snapshot)
{
	struct nlattr *snap_attr;
	int err;

	snap_attr = FUNC2(msg, DEVLINK_ATTR_REGION_SNAPSHOT);
	if (!snap_attr)
		return -EINVAL;

	err = FUNC3(msg, DEVLINK_ATTR_REGION_SNAPSHOT_ID, snapshot->id);
	if (err)
		goto nla_put_failure;

	FUNC1(msg, snap_attr);
	return 0;

nla_put_failure:
	FUNC0(msg, snap_attr);
	return err;
}