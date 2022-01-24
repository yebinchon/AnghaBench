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
struct devlink_param_item {int /*<<< orphan*/  list; } ;
struct devlink_param {int /*<<< orphan*/  name; } ;
struct devlink {int dummy; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct devlink_param_item* FUNC1 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink*,unsigned int,struct devlink_param_item*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink_param_item*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct devlink *devlink,
					 unsigned int port_index,
					 struct list_head *param_list,
					 const struct devlink_param *param,
					 enum devlink_command cmd)
{
	struct devlink_param_item *param_item;

	param_item = FUNC1(param_list, param->name);
	FUNC0(!param_item);
	FUNC2(devlink, port_index, param_item, cmd);
	FUNC4(&param_item->list);
	FUNC3(param_item);
}