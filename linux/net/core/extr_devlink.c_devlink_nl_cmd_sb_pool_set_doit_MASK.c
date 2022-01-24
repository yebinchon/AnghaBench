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
struct devlink {int /*<<< orphan*/  index; } ;
typedef  enum devlink_sb_threshold_type { ____Placeholder_devlink_sb_threshold_type } devlink_sb_threshold_type ;

/* Variables and functions */
 size_t DEVLINK_ATTR_SB_POOL_SIZE ; 
 int EINVAL ; 
 int FUNC0 (struct devlink_sb*,struct genl_info*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct devlink_sb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct genl_info*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
					   struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_sb *devlink_sb = info->user_ptr[1];
	enum devlink_sb_threshold_type threshold_type;
	u16 pool_index;
	u32 size;
	int err;

	err = FUNC0(devlink_sb, info,
						  &pool_index);
	if (err)
		return err;

	err = FUNC2(info, &threshold_type);
	if (err)
		return err;

	if (!info->attrs[DEVLINK_ATTR_SB_POOL_SIZE])
		return -EINVAL;

	size = FUNC3(info->attrs[DEVLINK_ATTR_SB_POOL_SIZE]);
	return FUNC1(devlink, devlink_sb->index,
				   pool_index, size, threshold_type,
				   info->extack);
}