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
struct genl_info {struct devlink** user_ptr; } ;
struct devlink {int /*<<< orphan*/  resource_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_RESOURCE_DUMP ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct genl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb,
					struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];

	if (FUNC1(&devlink->resource_list))
		return -EOPNOTSUPP;

	return FUNC0(info, DEVLINK_CMD_RESOURCE_DUMP, 0);
}