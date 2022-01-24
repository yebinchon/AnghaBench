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
struct genl_info {int /*<<< orphan*/ * attrs; } ;
struct devlink_trap_group_item {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 size_t DEVLINK_ATTR_TRAP_GROUP_NAME ; 
 struct devlink_trap_group_item* FUNC0 (struct devlink*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct devlink_trap_group_item *
FUNC2(struct devlink *devlink,
				      struct genl_info *info)
{
	char *name;

	if (!info->attrs[DEVLINK_ATTR_TRAP_GROUP_NAME])
		return NULL;
	name = FUNC1(info->attrs[DEVLINK_ATTR_TRAP_GROUP_NAME]);

	return FUNC0(devlink, name);
}