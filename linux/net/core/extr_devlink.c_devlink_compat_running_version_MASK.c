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
struct TYPE_2__ {int /*<<< orphan*/  info_get; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct devlink*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct devlink* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct net_device *dev,
				    char *buf, size_t len)
{
	struct devlink *devlink;

	FUNC1(dev);
	FUNC7();

	devlink = FUNC5(dev);
	if (!devlink || !devlink->ops->info_get)
		goto out;

	FUNC3(&devlink->lock);
	FUNC0(devlink, buf, len);
	FUNC4(&devlink->lock);

out:
	FUNC6();
	FUNC2(dev);
}