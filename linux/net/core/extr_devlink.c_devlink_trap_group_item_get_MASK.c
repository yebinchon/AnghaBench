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
struct devlink_trap_group_item {int /*<<< orphan*/  refcount; } ;
struct devlink_trap_group {int /*<<< orphan*/  name; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 struct devlink_trap_group_item* FUNC0 (struct devlink*,struct devlink_trap_group const*) ; 
 struct devlink_trap_group_item* FUNC1 (struct devlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct devlink_trap_group_item *
FUNC3(struct devlink *devlink,
			    const struct devlink_trap_group *group)
{
	struct devlink_trap_group_item *group_item;

	group_item = FUNC1(devlink, group->name);
	if (group_item) {
		FUNC2(&group_item->refcount);
		return group_item;
	}

	return FUNC0(devlink, group);
}