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
struct wimax_dev {int rf_sw; int rf_hw; int /*<<< orphan*/  mutex; int /*<<< orphan*/  rfkill; } ;
struct device {int dummy; } ;
typedef  enum wimax_rf_state { ____Placeholder_wimax_rf_state } wimax_rf_state ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEDIUM ; 
#define  WIMAX_RF_OFF 130 
#define  WIMAX_RF_ON 129 
#define  WIMAX_RF_QUERY 128 
 int FUNC0 (struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct wimax_dev*) ; 
 struct device* FUNC7 (struct wimax_dev*) ; 

int FUNC8(struct wimax_dev *wimax_dev, enum wimax_rf_state state)
{
	int result;
	struct device *dev = FUNC7(wimax_dev);

	FUNC2(3, dev, "(wimax_dev %p state %u)\n", wimax_dev, state);
	FUNC3(&wimax_dev->mutex);
	result = FUNC6(wimax_dev);
	if (result < 0) {
		/* While initializing, < 1.4.3 wimax-tools versions use
		 * this call to check if the device is a valid WiMAX
		 * device; so we allow it to proceed always,
		 * considering the radios are all off. */
		if (result == -ENOMEDIUM && state == WIMAX_RF_QUERY)
			result = WIMAX_RF_OFF << 1 | WIMAX_RF_OFF;
		goto error_not_ready;
	}
	switch (state) {
	case WIMAX_RF_ON:
	case WIMAX_RF_OFF:
		result = FUNC0(wimax_dev, state);
		if (result < 0)
			goto error;
		FUNC5(wimax_dev->rfkill, state == WIMAX_RF_OFF);
		break;
	case WIMAX_RF_QUERY:
		break;
	default:
		result = -EINVAL;
		goto error;
	}
	result = wimax_dev->rf_sw << 1 | wimax_dev->rf_hw;
error:
error_not_ready:
	FUNC4(&wimax_dev->mutex);
	FUNC1(3, dev, "(wimax_dev %p state %u) = %d\n",
		wimax_dev, state, result);
	return result;
}