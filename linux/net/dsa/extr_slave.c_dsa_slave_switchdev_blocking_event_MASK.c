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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
#define  SWITCHDEV_PORT_ATTR_SET 130 
#define  SWITCHDEV_PORT_OBJ_ADD 129 
#define  SWITCHDEV_PORT_OBJ_DEL 128 
 int /*<<< orphan*/  dsa_slave_dev_check ; 
 int /*<<< orphan*/  dsa_slave_port_attr_set ; 
 int /*<<< orphan*/  dsa_slave_port_obj_add ; 
 int /*<<< orphan*/  dsa_slave_port_obj_del ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct net_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *unused,
					      unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC4(ptr);
	int err;

	switch (event) {
	case SWITCHDEV_PORT_OBJ_ADD:
		err = FUNC2(dev, ptr,
						    dsa_slave_dev_check,
						    dsa_slave_port_obj_add);
		return FUNC0(err);
	case SWITCHDEV_PORT_OBJ_DEL:
		err = FUNC3(dev, ptr,
						    dsa_slave_dev_check,
						    dsa_slave_port_obj_del);
		return FUNC0(err);
	case SWITCHDEV_PORT_ATTR_SET:
		err = FUNC1(dev, ptr,
						     dsa_slave_dev_check,
						     dsa_slave_port_attr_set);
		return FUNC0(err);
	}

	return NOTIFY_DONE;
}