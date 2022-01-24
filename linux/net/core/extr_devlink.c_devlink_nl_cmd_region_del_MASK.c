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
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct devlink** user_ptr; } ;
struct devlink_snapshot {int dummy; } ;
struct devlink_region {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 size_t DEVLINK_ATTR_REGION_NAME ; 
 size_t DEVLINK_ATTR_REGION_SNAPSHOT_ID ; 
 int EINVAL ; 
 struct devlink_region* FUNC0 (struct devlink*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_region*,struct devlink_snapshot*) ; 
 struct devlink_snapshot* FUNC2 (struct devlink_region*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
				     struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_snapshot *snapshot;
	struct devlink_region *region;
	const char *region_name;
	u32 snapshot_id;

	if (!info->attrs[DEVLINK_ATTR_REGION_NAME] ||
	    !info->attrs[DEVLINK_ATTR_REGION_SNAPSHOT_ID])
		return -EINVAL;

	region_name = FUNC3(info->attrs[DEVLINK_ATTR_REGION_NAME]);
	snapshot_id = FUNC4(info->attrs[DEVLINK_ATTR_REGION_SNAPSHOT_ID]);

	region = FUNC0(devlink, region_name);
	if (!region)
		return -EINVAL;

	snapshot = FUNC2(region, snapshot_id);
	if (!snapshot)
		return -EINVAL;

	FUNC1(region, snapshot);
	return 0;
}