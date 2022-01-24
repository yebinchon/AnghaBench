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
struct netdev_notifier_changeupper_info {int /*<<< orphan*/  upper_dev; scalar_t__ linking; } ;
struct net_device {int dummy; } ;
struct dsa_port {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int FUNC0 (struct dsa_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_port*,int /*<<< orphan*/ ) ; 
 struct dsa_port* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				 struct netdev_notifier_changeupper_info *info)
{
	struct dsa_port *dp = FUNC2(dev);
	int err = NOTIFY_DONE;

	if (FUNC3(info->upper_dev)) {
		if (info->linking) {
			err = FUNC0(dp, info->upper_dev);
			err = FUNC4(err);
		} else {
			FUNC1(dp, info->upper_dev);
			err = NOTIFY_OK;
		}
	}

	return err;
}