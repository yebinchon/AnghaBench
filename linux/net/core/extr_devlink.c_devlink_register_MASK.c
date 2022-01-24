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
struct devlink {int /*<<< orphan*/  list; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_NEW ; 
 int /*<<< orphan*/  devlink_list ; 
 int /*<<< orphan*/  devlink_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct devlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct devlink *devlink, struct device *dev)
{
	FUNC2(&devlink_mutex);
	devlink->dev = dev;
	FUNC1(&devlink->list, &devlink_list);
	FUNC0(devlink, DEVLINK_CMD_NEW);
	FUNC3(&devlink_mutex);
	return 0;
}