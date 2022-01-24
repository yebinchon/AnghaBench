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
struct wimax_dev {int rf_sw; int (* op_rfkill_sw_toggle ) (struct wimax_dev*,int) ;} ;
struct device {int dummy; } ;
typedef  enum wimax_st { ____Placeholder_wimax_st } wimax_st ;
typedef  enum wimax_rf_state { ____Placeholder_wimax_rf_state } wimax_rf_state ;

/* Variables and functions */
 int ENXIO ; 
 int WIMAX_RF_OFF ; 
 int WIMAX_RF_ON ; 
 int WIMAX_ST_RADIO_OFF ; 
 int WIMAX_ST_READY ; 
 int /*<<< orphan*/  FUNC0 (struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct wimax_dev*,int) ; 
 struct device* FUNC5 (struct wimax_dev*) ; 

__attribute__((used)) static
int FUNC6(struct wimax_dev *wimax_dev,
			    enum wimax_rf_state state)
{
	int result = 0;
	struct device *dev = FUNC5(wimax_dev);
	enum wimax_st wimax_state;

	FUNC3();
	FUNC2(3, dev, "(wimax_dev %p state %u)\n", wimax_dev, state);
	if (wimax_dev->rf_sw == state)
		goto out_no_change;
	if (wimax_dev->op_rfkill_sw_toggle != NULL)
		result = wimax_dev->op_rfkill_sw_toggle(wimax_dev, state);
	else if (state == WIMAX_RF_OFF)	/* No op? can't turn off */
		result = -ENXIO;
	else				/* No op? can turn on */
		result = 0;		/* should never happen tho */
	if (result >= 0) {
		result = 0;
		wimax_dev->rf_sw = state;
		wimax_state = state == WIMAX_RF_ON ?
			WIMAX_ST_READY : WIMAX_ST_RADIO_OFF;
		FUNC0(wimax_dev, wimax_state);
	}
out_no_change:
	FUNC1(3, dev, "(wimax_dev %p state %u) = %d\n",
		wimax_dev, state, result);
	return result;
}