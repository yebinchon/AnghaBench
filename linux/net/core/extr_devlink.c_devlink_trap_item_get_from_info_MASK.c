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
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
struct devlink_trap_item {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 size_t DEVLINK_ATTR_TRAP_NAME ; 
 struct devlink_trap_item* FUNC0 (struct devlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 

__attribute__((used)) static struct devlink_trap_item *
FUNC2(struct devlink *devlink,
				struct genl_info *info)
{
	struct nlattr *attr;

	if (!info->attrs[DEVLINK_ATTR_TRAP_NAME])
		return NULL;
	attr = info->attrs[DEVLINK_ATTR_TRAP_NAME];

	return FUNC0(devlink, FUNC1(attr));
}