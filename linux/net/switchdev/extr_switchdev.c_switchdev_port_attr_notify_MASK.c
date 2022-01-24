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
struct switchdev_trans {int dummy; } ;
struct switchdev_notifier_port_attr_info {int handled; int /*<<< orphan*/  info; struct switchdev_trans* trans; struct switchdev_attr const* attr; } ;
struct switchdev_attr {int dummy; } ;
struct net_device {int dummy; } ;
typedef  enum switchdev_notifier_type { ____Placeholder_switchdev_notifier_type } switchdev_notifier_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(enum switchdev_notifier_type nt,
				      struct net_device *dev,
				      const struct switchdev_attr *attr,
				      struct switchdev_trans *trans)
{
	int err;
	int rc;

	struct switchdev_notifier_port_attr_info attr_info = {
		.attr = attr,
		.trans = trans,
		.handled = false,
	};

	rc = FUNC1(nt, dev,
					       &attr_info.info, NULL);
	err = FUNC2(rc);
	if (err) {
		FUNC0(!attr_info.handled);
		return err;
	}

	if (!attr_info.handled)
		return -EOPNOTSUPP;

	return 0;
}