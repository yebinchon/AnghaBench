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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct devlink_region {char const* name; int /*<<< orphan*/  list; int /*<<< orphan*/  snapshot_list; int /*<<< orphan*/  size; int /*<<< orphan*/  max_snapshots; struct devlink* devlink; } ;
struct devlink {int /*<<< orphan*/  lock; int /*<<< orphan*/  region_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_REGION_NEW ; 
 int EEXIST ; 
 int ENOMEM ; 
 struct devlink_region* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink_region*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct devlink*,char const*) ; 
 struct devlink_region* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct devlink_region *FUNC8(struct devlink *devlink,
					     const char *region_name,
					     u32 region_max_snapshots,
					     u64 region_size)
{
	struct devlink_region *region;
	int err = 0;

	FUNC6(&devlink->lock);

	if (FUNC3(devlink, region_name)) {
		err = -EEXIST;
		goto unlock;
	}

	region = FUNC4(sizeof(*region), GFP_KERNEL);
	if (!region) {
		err = -ENOMEM;
		goto unlock;
	}

	region->devlink = devlink;
	region->max_snapshots = region_max_snapshots;
	region->name = region_name;
	region->size = region_size;
	FUNC1(&region->snapshot_list);
	FUNC5(&region->list, &devlink->region_list);
	FUNC2(region, NULL, DEVLINK_CMD_REGION_NEW);

	FUNC7(&devlink->lock);
	return region;

unlock:
	FUNC7(&devlink->lock);
	return FUNC0(err);
}