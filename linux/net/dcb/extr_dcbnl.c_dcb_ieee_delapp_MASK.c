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
struct dcb_app_type {int /*<<< orphan*/  list; int /*<<< orphan*/  dcbx; int /*<<< orphan*/  app; int /*<<< orphan*/  ifindex; } ;
struct dcb_app {int /*<<< orphan*/  priority; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* getdcbx ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_APP_EVENT ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dcb_app_type*) ; 
 struct dcb_app_type* FUNC1 (struct dcb_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dcb_lock ; 
 int /*<<< orphan*/  FUNC2 (struct dcb_app_type*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dcb_app*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

int FUNC8(struct net_device *dev, struct dcb_app *del)
{
	struct dcb_app_type *itr;
	struct dcb_app_type event;
	int err = -ENOENT;

	event.ifindex = dev->ifindex;
	FUNC4(&event.app, del, sizeof(event.app));
	if (dev->dcbnl_ops->getdcbx)
		event.dcbx = dev->dcbnl_ops->getdcbx(dev);

	FUNC5(&dcb_lock);
	/* Search for existing match and remove it. */
	if ((itr = FUNC1(del, dev->ifindex, del->priority))) {
		FUNC3(&itr->list);
		FUNC2(itr);
		err = 0;
	}

	FUNC6(&dcb_lock);
	if (!err)
		FUNC0(DCB_APP_EVENT, &event);
	return err;
}