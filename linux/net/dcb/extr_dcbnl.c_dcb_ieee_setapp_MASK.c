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
struct net_device {int /*<<< orphan*/  ifindex; TYPE_1__* dcbnl_ops; } ;
struct dcb_app_type {int /*<<< orphan*/  dcbx; int /*<<< orphan*/  app; int /*<<< orphan*/  ifindex; } ;
struct dcb_app {int /*<<< orphan*/  priority; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* getdcbx ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_APP_EVENT ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dcb_app_type*) ; 
 int FUNC1 (struct dcb_app*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dcb_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dcb_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dcb_app*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

int FUNC7(struct net_device *dev, struct dcb_app *new)
{
	struct dcb_app_type event;
	int err = 0;

	event.ifindex = dev->ifindex;
	FUNC3(&event.app, new, sizeof(event.app));
	if (dev->dcbnl_ops->getdcbx)
		event.dcbx = dev->dcbnl_ops->getdcbx(dev);

	FUNC4(&dcb_lock);
	/* Search for existing match and abort if found */
	if (FUNC2(new, dev->ifindex, new->priority)) {
		err = -EEXIST;
		goto out;
	}

	err = FUNC1(new, dev->ifindex);
out:
	FUNC5(&dcb_lock);
	if (!err)
		FUNC0(DCB_APP_EVENT, &event);
	return err;
}