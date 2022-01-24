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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  extack; int /*<<< orphan*/ * attrs; struct devlink_sb** user_ptr; } ;
struct devlink_sb {int /*<<< orphan*/  index; } ;
struct devlink_port {int /*<<< orphan*/  index; } ;
typedef  enum devlink_sb_pool_type { ____Placeholder_devlink_sb_pool_type } devlink_sb_pool_type ;

/* Variables and functions */
 size_t DEVLINK_ATTR_SB_THRESHOLD ; 
 int EINVAL ; 
 int FUNC0 (struct devlink_sb*,struct genl_info*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct genl_info*,int*) ; 
 int FUNC2 (struct devlink_sb*,struct genl_info*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct devlink_sb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
						   struct genl_info *info)
{
	struct devlink_port *devlink_port = info->user_ptr[0];
	struct devlink_sb *devlink_sb = info->user_ptr[1];
	enum devlink_sb_pool_type pool_type;
	u16 tc_index;
	u16 pool_index;
	u32 threshold;
	int err;

	err = FUNC1(info, &pool_type);
	if (err)
		return err;

	err = FUNC2(devlink_sb, info,
						pool_type, &tc_index);
	if (err)
		return err;

	err = FUNC0(devlink_sb, info,
						  &pool_index);
	if (err)
		return err;

	if (!info->attrs[DEVLINK_ATTR_SB_THRESHOLD])
		return -EINVAL;

	threshold = FUNC4(info->attrs[DEVLINK_ATTR_SB_THRESHOLD]);
	return FUNC3(devlink_port, devlink_sb->index,
					   tc_index, pool_type,
					   pool_index, threshold, info->extack);
}