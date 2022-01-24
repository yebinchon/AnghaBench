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
struct tpa6130a2_data {scalar_t__ power_gpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  supply; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct tpa6130a2_data *data, bool enable)
{
	int ret = 0, ret2;

	if (enable) {
		ret = FUNC6(data->supply);
		if (ret != 0) {
			FUNC0(data->dev,
				"Failed to enable supply: %d\n", ret);
			return ret;
		}
		/* Power on */
		if (data->power_gpio >= 0)
			FUNC1(data->power_gpio, 1);

		/* Sync registers */
		FUNC2(data->regmap, false);
		ret = FUNC4(data->regmap);
		if (ret != 0) {
			FUNC0(data->dev,
				"Failed to sync registers: %d\n", ret);
			FUNC2(data->regmap, true);
			if (data->power_gpio >= 0)
				FUNC1(data->power_gpio, 0);
			ret2 = FUNC5(data->supply);
			if (ret2 != 0)
				FUNC0(data->dev,
					"Failed to disable supply: %d\n", ret2);
			return ret;
		}
	} else {
		/* Powered off device does not retain registers. While device
		 * is off, any register updates (i.e. volume changes) should
		 * happen in cache only.
		 */
		FUNC3(data->regmap);
		FUNC2(data->regmap, true);

		/* Power off */
		if (data->power_gpio >= 0)
			FUNC1(data->power_gpio, 0);

		ret = FUNC5(data->supply);
		if (ret != 0) {
			FUNC0(data->dev,
				"Failed to disable supply: %d\n", ret);
			return ret;
		}
	}

	return ret;
}