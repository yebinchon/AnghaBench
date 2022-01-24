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
struct wm8731_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM8731_APANA ; 
 int /*<<< orphan*/  WM8731_LINVOL ; 
 int /*<<< orphan*/  WM8731_LOUT1V ; 
 int /*<<< orphan*/  WM8731_PWR ; 
 int /*<<< orphan*/  WM8731_RINVOL ; 
 int /*<<< orphan*/  WM8731_ROUT1V ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct wm8731_priv *wm8731)
{
	int ret = 0;

	ret = FUNC6(wm8731->regmap);
	if (ret < 0) {
		FUNC1(dev, "Failed to issue reset: %d\n", ret);
		goto err_regulator_enable;
	}

	/* Clear POWEROFF, keep everything else disabled */
	FUNC4(wm8731->regmap, WM8731_PWR, 0x7f);

	/* Latch the update bits */
	FUNC3(wm8731->regmap, WM8731_LOUT1V, 0x100, 0);
	FUNC3(wm8731->regmap, WM8731_ROUT1V, 0x100, 0);
	FUNC3(wm8731->regmap, WM8731_LINVOL, 0x100, 0);
	FUNC3(wm8731->regmap, WM8731_RINVOL, 0x100, 0);

	/* Disable bypass path by default */
	FUNC3(wm8731->regmap, WM8731_APANA, 0x8, 0);

	FUNC2(wm8731->regmap);

err_regulator_enable:
	/* Regulators will be enabled by bias management */
	FUNC5(FUNC0(wm8731->supplies), wm8731->supplies);

	return ret;
}