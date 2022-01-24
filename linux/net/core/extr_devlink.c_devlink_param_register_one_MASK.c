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
struct list_head {int dummy; } ;
struct devlink_param_item {int /*<<< orphan*/  list; struct devlink_param const* param; } ;
struct devlink_param {scalar_t__ supported_cmodes; scalar_t__ set; scalar_t__ get; int /*<<< orphan*/  name; } ;
struct devlink {int dummy; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEVLINK_PARAM_CMODE_DRIVERINIT ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink*,unsigned int,struct devlink_param_item*,int) ; 
 struct devlink_param_item* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC6(struct devlink *devlink,
				      unsigned int port_index,
				      struct list_head *param_list,
				      const struct devlink_param *param,
				      enum devlink_command cmd)
{
	struct devlink_param_item *param_item;

	if (FUNC2(param_list, param->name))
		return -EEXIST;

	if (param->supported_cmodes == FUNC0(DEVLINK_PARAM_CMODE_DRIVERINIT))
		FUNC1(param->get || param->set);
	else
		FUNC1(!param->get || !param->set);

	param_item = FUNC4(sizeof(*param_item), GFP_KERNEL);
	if (!param_item)
		return -ENOMEM;
	param_item->param = param;

	FUNC5(&param_item->list, param_list);
	FUNC3(devlink, port_index, param_item, cmd);
	return 0;
}