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
struct wcd9335_codec {int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  supplies; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCD9335_MAX_SUPPLY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct wcd9335_codec *wcd)
{
	struct device *dev = wcd->dev;
	int ret;

	ret = FUNC4(WCD9335_MAX_SUPPLY, wcd->supplies);
	if (ret) {
		FUNC0(dev, "Failed to get supplies: err = %d\n", ret);
		return ret;
	}

	/*
	 * For WCD9335, it takes about 600us for the Vout_A and
	 * Vout_D to be ready after BUCK_SIDO is powered up.
	 * SYS_RST_N shouldn't be pulled high during this time
	 * Toggle the reset line to make sure the reset pulse is
	 * correctly applied
	 */
	FUNC5(600, 650);

	FUNC1(wcd->reset_gpio, 0);
	FUNC3(20);
	FUNC2(wcd->reset_gpio, 1);
	FUNC3(20);

	return 0;
}