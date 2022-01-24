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
struct genl_ops {int internal_flags; } ;
struct genl_info {struct devlink_sb** user_ptr; } ;
struct devlink_sb {int /*<<< orphan*/  lock; } ;
struct devlink_port {int /*<<< orphan*/  lock; } ;
struct devlink {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int DEVLINK_NL_FLAG_NEED_DEVLINK ; 
 int DEVLINK_NL_FLAG_NEED_PORT ; 
 int DEVLINK_NL_FLAG_NEED_SB ; 
 int DEVLINK_NL_FLAG_NO_LOCK ; 
 scalar_t__ FUNC0 (struct devlink_sb*) ; 
 int FUNC1 (struct devlink_sb*) ; 
 struct devlink_sb* FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  devlink_mutex ; 
 struct devlink_sb* FUNC3 (struct devlink_sb*,struct genl_info*) ; 
 struct devlink_sb* FUNC4 (struct devlink_sb*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const struct genl_ops *ops,
			       struct sk_buff *skb, struct genl_info *info)
{
	struct devlink *devlink;
	int err;

	FUNC5(&devlink_mutex);
	devlink = FUNC2(info);
	if (FUNC0(devlink)) {
		FUNC6(&devlink_mutex);
		return FUNC1(devlink);
	}
	if (~ops->internal_flags & DEVLINK_NL_FLAG_NO_LOCK)
		FUNC5(&devlink->lock);
	if (ops->internal_flags & DEVLINK_NL_FLAG_NEED_DEVLINK) {
		info->user_ptr[0] = devlink;
	} else if (ops->internal_flags & DEVLINK_NL_FLAG_NEED_PORT) {
		struct devlink_port *devlink_port;

		devlink_port = FUNC3(devlink, info);
		if (FUNC0(devlink_port)) {
			err = FUNC1(devlink_port);
			goto unlock;
		}
		info->user_ptr[0] = devlink_port;
	}
	if (ops->internal_flags & DEVLINK_NL_FLAG_NEED_SB) {
		struct devlink_sb *devlink_sb;

		devlink_sb = FUNC4(devlink, info);
		if (FUNC0(devlink_sb)) {
			err = FUNC1(devlink_sb);
			goto unlock;
		}
		info->user_ptr[1] = devlink_sb;
	}
	return 0;

unlock:
	if (~ops->internal_flags & DEVLINK_NL_FLAG_NO_LOCK)
		FUNC6(&devlink->lock);
	FUNC6(&devlink_mutex);
	return err;
}