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
struct nfc_dev {int shutting_down; int /*<<< orphan*/  dev; int /*<<< orphan*/  check_pres_work; int /*<<< orphan*/  check_pres_timer; TYPE_1__* ops; scalar_t__ rfkill; } ;
struct TYPE_2__ {scalar_t__ check_presence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfc_devlist_generation ; 
 int /*<<< orphan*/  nfc_devlist_mutex ; 
 int FUNC8 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

void FUNC13(struct nfc_dev *dev)
{
	int rc;

	FUNC10("dev_name=%s\n", FUNC2(&dev->dev));

	if (dev->rfkill) {
		FUNC12(dev->rfkill);
		FUNC11(dev->rfkill);
	}

	if (dev->ops->check_presence) {
		FUNC4(&dev->dev);
		dev->shutting_down = true;
		FUNC5(&dev->dev);
		FUNC1(&dev->check_pres_timer);
		FUNC0(&dev->check_pres_work);
	}

	rc = FUNC8(dev);
	if (rc)
		FUNC10("The userspace won't be notified that the device %s "
			 "was removed\n", FUNC2(&dev->dev));

	FUNC9(dev);

	FUNC6(&nfc_devlist_mutex);
	nfc_devlist_generation++;
	FUNC3(&dev->dev);
	FUNC7(&nfc_devlist_mutex);
}