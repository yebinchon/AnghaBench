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
struct wimax_dev {struct rfkill* rfkill; int /*<<< orphan*/  rf_sw; int /*<<< orphan*/ * op_rfkill_sw_toggle; int /*<<< orphan*/  name; } ;
struct rfkill {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RFKILL_TYPE_WIMAX ; 
 int /*<<< orphan*/  WIMAX_RF_ON ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct wimax_dev*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct rfkill*) ; 
 struct rfkill* FUNC3 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfkill*,int) ; 
 int FUNC6 (struct rfkill*) ; 
 struct device* FUNC7 (struct wimax_dev*) ; 
 int /*<<< orphan*/  wimax_rfkill_ops ; 

int FUNC8(struct wimax_dev *wimax_dev)
{
	int result;
	struct rfkill *rfkill;
	struct device *dev = FUNC7(wimax_dev);

	FUNC1(3, dev, "(wimax_dev %p)\n", wimax_dev);
	/* Initialize RF Kill */
	result = -ENOMEM;
	rfkill = FUNC3(wimax_dev->name, dev, RFKILL_TYPE_WIMAX,
			      &wimax_rfkill_ops, wimax_dev);
	if (rfkill == NULL)
		goto error_rfkill_allocate;

	FUNC2(1, dev, "rfkill %p\n", rfkill);

	wimax_dev->rfkill = rfkill;

	FUNC5(rfkill, 1);
	result = FUNC6(wimax_dev->rfkill);
	if (result < 0)
		goto error_rfkill_register;

	/* If there is no SW toggle op, SW RFKill is always on */
	if (wimax_dev->op_rfkill_sw_toggle == NULL)
		wimax_dev->rf_sw = WIMAX_RF_ON;

	FUNC0(3, dev, "(wimax_dev %p) = 0\n", wimax_dev);
	return 0;

error_rfkill_register:
	FUNC4(wimax_dev->rfkill);
error_rfkill_allocate:
	FUNC0(3, dev, "(wimax_dev %p) = %d\n", wimax_dev, result);
	return result;
}