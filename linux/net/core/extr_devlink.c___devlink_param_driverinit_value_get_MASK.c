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
union devlink_param_value {int /*<<< orphan*/  vstr; } ;
typedef  int /*<<< orphan*/  u32 ;
struct list_head {int dummy; } ;
struct devlink_param_item {union devlink_param_value driverinit_value; TYPE_1__* param; int /*<<< orphan*/  driverinit_value_valid; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_PARAM_CMODE_DRIVERINIT ; 
 scalar_t__ DEVLINK_PARAM_TYPE_STRING ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct devlink_param_item* FUNC1 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct list_head *param_list, u32 param_id,
				     union devlink_param_value *init_val)
{
	struct devlink_param_item *param_item;

	param_item = FUNC1(param_list, param_id);
	if (!param_item)
		return -EINVAL;

	if (!param_item->driverinit_value_valid ||
	    !FUNC0(param_item->param,
					      DEVLINK_PARAM_CMODE_DRIVERINIT))
		return -EOPNOTSUPP;

	if (param_item->param->type == DEVLINK_PARAM_TYPE_STRING)
		FUNC2(init_val->vstr, param_item->driverinit_value.vstr);
	else
		*init_val = param_item->driverinit_value;

	return 0;
}