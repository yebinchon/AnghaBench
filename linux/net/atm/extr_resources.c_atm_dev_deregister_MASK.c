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
struct atm_dev {int /*<<< orphan*/  dev_list; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_DF_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atm_dev_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct atm_dev *dev)
{
	FUNC0(FUNC9(ATM_DF_REMOVED, &dev->flags));
	FUNC8(ATM_DF_REMOVED, &dev->flags);

	/*
	 * if we remove current device from atm_devs list, new device
	 * with same number can appear, such we need deregister proc,
	 * release async all vccs and remove them from vccs list too
	 */
	FUNC6(&atm_dev_mutex);
	FUNC5(&dev->dev_list);
	FUNC7(&atm_dev_mutex);

	FUNC2(dev);
	FUNC4(dev);
	FUNC3(dev);

	FUNC1(dev);
}