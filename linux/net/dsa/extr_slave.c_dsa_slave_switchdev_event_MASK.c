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
struct dsa_switchdev_event_work {unsigned long event; int /*<<< orphan*/  work; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
#define  SWITCHDEV_FDB_ADD_TO_DEVICE 129 
#define  SWITCHDEV_FDB_DEL_TO_DEVICE 128 
 unsigned long SWITCHDEV_PORT_ATTR_SET ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  dsa_slave_port_attr_set ; 
 int /*<<< orphan*/  dsa_slave_switchdev_event_work ; 
 int /*<<< orphan*/  FUNC4 (struct dsa_switchdev_event_work*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsa_switchdev_event_work*) ; 
 struct dsa_switchdev_event_work* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (struct net_device*,void*,int /*<<< orphan*/  (*) (struct net_device*),int /*<<< orphan*/ ) ; 
 struct net_device* FUNC9 (void*) ; 

__attribute__((used)) static int FUNC10(struct notifier_block *unused,
				     unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC9(ptr);
	struct dsa_switchdev_event_work *switchdev_work;
	int err;

	if (event == SWITCHDEV_PORT_ATTR_SET) {
		err = FUNC8(dev, ptr,
						     dsa_slave_dev_check,
						     dsa_slave_port_attr_set);
		return FUNC7(err);
	}

	if (!FUNC3(dev))
		return NOTIFY_DONE;

	switchdev_work = FUNC6(sizeof(*switchdev_work), GFP_ATOMIC);
	if (!switchdev_work)
		return NOTIFY_BAD;

	FUNC0(&switchdev_work->work,
		  dsa_slave_switchdev_event_work);
	switchdev_work->dev = dev;
	switchdev_work->event = event;

	switch (event) {
	case SWITCHDEV_FDB_ADD_TO_DEVICE: /* fall through */
	case SWITCHDEV_FDB_DEL_TO_DEVICE:
		if (FUNC4(switchdev_work, ptr))
			goto err_fdb_work_init;
		FUNC1(dev);
		break;
	default:
		FUNC5(switchdev_work);
		return NOTIFY_DONE;
	}

	FUNC2(&switchdev_work->work);
	return NOTIFY_OK;

err_fdb_work_init:
	FUNC5(switchdev_work);
	return NOTIFY_BAD;
}