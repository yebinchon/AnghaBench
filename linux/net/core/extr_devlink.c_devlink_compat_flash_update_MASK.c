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
struct net_device {int dummy; } ;
struct devlink {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flash_update ) (struct devlink*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct devlink* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct devlink*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(struct net_device *dev, const char *file_name)
{
	struct devlink *devlink;
	int ret;

	FUNC0(dev);
	FUNC6();

	devlink = FUNC4(dev);
	if (!devlink || !devlink->ops->flash_update) {
		ret = -EOPNOTSUPP;
		goto out;
	}

	FUNC2(&devlink->lock);
	ret = devlink->ops->flash_update(devlink, file_name, NULL, NULL);
	FUNC3(&devlink->lock);

out:
	FUNC5();
	FUNC1(dev);

	return ret;
}