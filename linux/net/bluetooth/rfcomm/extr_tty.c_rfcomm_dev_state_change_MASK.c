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
struct rfcomm_dlc {scalar_t__ state; struct rfcomm_dev* owner; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_wait; } ;
struct rfcomm_dev {int err; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,struct rfcomm_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rfcomm_dlc *dlc, int err)
{
	struct rfcomm_dev *dev = dlc->owner;
	if (!dev)
		return;

	FUNC0("dlc %p dev %p err %d", dlc, dev, err);

	dev->err = err;
	if (dlc->state == BT_CONNECTED) {
		FUNC1(dev);

		FUNC3(&dev->port.open_wait);
	} else if (dlc->state == BT_CLOSED)
		FUNC2(&dev->port, false);
}