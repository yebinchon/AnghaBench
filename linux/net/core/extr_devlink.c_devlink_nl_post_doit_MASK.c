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
struct genl_info {int dummy; } ;
struct devlink {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int DEVLINK_NL_FLAG_NO_LOCK ; 
 struct devlink* FUNC0 (struct genl_info*) ; 
 int /*<<< orphan*/  devlink_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(const struct genl_ops *ops,
				 struct sk_buff *skb, struct genl_info *info)
{
	struct devlink *devlink;

	devlink = FUNC0(info);
	if (~ops->internal_flags & DEVLINK_NL_FLAG_NO_LOCK)
		FUNC1(&devlink->lock);
	FUNC1(&devlink_mutex);
}