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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct devlink_snapshot {int /*<<< orphan*/  list; int /*<<< orphan*/ * data_destructor; int /*<<< orphan*/ * data; struct devlink_region* region; int /*<<< orphan*/  id; } ;
struct devlink_region {scalar_t__ cur_snapshots; scalar_t__ max_snapshots; int /*<<< orphan*/  snapshot_list; struct devlink* devlink; } ;
struct devlink {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  devlink_snapshot_data_dest_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_REGION_NEW ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct devlink_region*,struct devlink_snapshot*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct devlink_region*,int /*<<< orphan*/ ) ; 
 struct devlink_snapshot* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct devlink_region *region,
				   u8 *data, u32 snapshot_id,
				   devlink_snapshot_data_dest_t *data_destructor)
{
	struct devlink *devlink = region->devlink;
	struct devlink_snapshot *snapshot;
	int err;

	FUNC4(&devlink->lock);

	/* check if region can hold one more snapshot */
	if (region->cur_snapshots == region->max_snapshots) {
		err = -ENOMEM;
		goto unlock;
	}

	if (FUNC1(region, snapshot_id)) {
		err = -EEXIST;
		goto unlock;
	}

	snapshot = FUNC2(sizeof(*snapshot), GFP_KERNEL);
	if (!snapshot) {
		err = -ENOMEM;
		goto unlock;
	}

	snapshot->id = snapshot_id;
	snapshot->region = region;
	snapshot->data = data;
	snapshot->data_destructor = data_destructor;

	FUNC3(&snapshot->list, &region->snapshot_list);

	region->cur_snapshots++;

	FUNC0(region, snapshot, DEVLINK_CMD_REGION_NEW);
	FUNC5(&devlink->lock);
	return 0;

unlock:
	FUNC5(&devlink->lock);
	return err;
}