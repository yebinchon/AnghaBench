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
struct wimax_dev {scalar_t__ state; int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;
typedef  enum wimax_rf_state { ____Placeholder_wimax_rf_state } wimax_rf_state ;

/* Variables and functions */
 int WIMAX_RF_OFF ; 
 int WIMAX_RF_ON ; 
 scalar_t__ __WIMAX_ST_QUIESCING ; 
 int FUNC0 (struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct device* FUNC5 (struct wimax_dev*) ; 

__attribute__((used)) static int FUNC6(void *data, bool blocked)
{
	int result;
	struct wimax_dev *wimax_dev = data;
	struct device *dev = FUNC5(wimax_dev);
	enum wimax_rf_state rf_state;

	FUNC2(3, dev, "(wimax_dev %p blocked %u)\n", wimax_dev, blocked);
	rf_state = WIMAX_RF_ON;
	if (blocked)
		rf_state = WIMAX_RF_OFF;
	FUNC3(&wimax_dev->mutex);
	if (wimax_dev->state <= __WIMAX_ST_QUIESCING)
		result = 0;
	else
		result = FUNC0(wimax_dev, rf_state);
	FUNC4(&wimax_dev->mutex);
	FUNC1(3, dev, "(wimax_dev %p blocked %u) = %d\n",
		wimax_dev, blocked, result);
	return result;
}