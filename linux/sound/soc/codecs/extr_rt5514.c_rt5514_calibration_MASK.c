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
struct rt5514_priv {int pll3_cal_value; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5514_ANA_CTRL_PLL3 ; 
 int /*<<< orphan*/  RT5514_PLL3_CALIB_CTRL1 ; 
 int /*<<< orphan*/  RT5514_PLL3_CALIB_CTRL4 ; 
 int /*<<< orphan*/  RT5514_PLL3_CALIB_CTRL5 ; 
 int /*<<< orphan*/  RT5514_PLL_SOURCE_CTRL ; 
 int /*<<< orphan*/  RT5514_PWR_ANA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct rt5514_priv *rt5514, bool on)
{
	if (on) {
		FUNC1(rt5514->regmap, RT5514_ANA_CTRL_PLL3, 0x0000000a);
		FUNC0(rt5514->regmap, RT5514_PLL_SOURCE_CTRL, 0xf,
			0xa);
		FUNC0(rt5514->regmap, RT5514_PWR_ANA1, 0x301,
			0x301);
		FUNC1(rt5514->regmap, RT5514_PLL3_CALIB_CTRL4,
			0x80000000 | rt5514->pll3_cal_value);
		FUNC1(rt5514->regmap, RT5514_PLL3_CALIB_CTRL1,
			0x8bb80800);
		FUNC0(rt5514->regmap, RT5514_PLL3_CALIB_CTRL5,
			0xc0000000, 0x80000000);
		FUNC0(rt5514->regmap, RT5514_PLL3_CALIB_CTRL5,
			0xc0000000, 0xc0000000);
	} else {
		FUNC0(rt5514->regmap, RT5514_PLL3_CALIB_CTRL5,
			0xc0000000, 0x40000000);
		FUNC0(rt5514->regmap, RT5514_PWR_ANA1, 0x301, 0);
		FUNC0(rt5514->regmap, RT5514_PLL_SOURCE_CTRL, 0xf,
			0x4);
	}

	return 0;
}