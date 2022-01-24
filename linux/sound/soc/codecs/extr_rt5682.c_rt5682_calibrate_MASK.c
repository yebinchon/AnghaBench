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
struct rt5682_priv {int /*<<< orphan*/  calibrate_mutex; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5682_A_DAC1_MUX ; 
 int /*<<< orphan*/  RT5682_CALIB_ADC_CTRL ; 
 int /*<<< orphan*/  RT5682_CAL_REC ; 
 int /*<<< orphan*/  RT5682_CHOP_DAC ; 
 int /*<<< orphan*/  RT5682_GLB_CLK ; 
 int /*<<< orphan*/  RT5682_HP_CALIB_CTRL_1 ; 
 int /*<<< orphan*/  RT5682_HP_CALIB_CTRL_2 ; 
 int /*<<< orphan*/  RT5682_HP_CALIB_CTRL_3 ; 
 int /*<<< orphan*/  RT5682_HP_CALIB_STA_1 ; 
 int /*<<< orphan*/  RT5682_HP_IMP_SENS_CTRL_19 ; 
 int /*<<< orphan*/  RT5682_HP_LOGIC_CTRL_2 ; 
 int /*<<< orphan*/  RT5682_MICBIAS_2 ; 
 int /*<<< orphan*/  RT5682_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5682_PWR_DIG_1 ; 
 int /*<<< orphan*/  RT5682_STO1_ADC_MIXER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct rt5682_priv *rt5682)
{
	int value, count;

	FUNC0(&rt5682->calibrate_mutex);

	FUNC5(rt5682->regmap);
	FUNC4(rt5682->regmap, RT5682_PWR_ANLG_1, 0xa2af);
	FUNC6(15000, 20000);
	FUNC4(rt5682->regmap, RT5682_PWR_ANLG_1, 0xf2af);
	FUNC4(rt5682->regmap, RT5682_MICBIAS_2, 0x0300);
	FUNC4(rt5682->regmap, RT5682_GLB_CLK, 0x8000);
	FUNC4(rt5682->regmap, RT5682_PWR_DIG_1, 0x0100);
	FUNC4(rt5682->regmap, RT5682_HP_IMP_SENS_CTRL_19, 0x3800);
	FUNC4(rt5682->regmap, RT5682_CHOP_DAC, 0x3000);
	FUNC4(rt5682->regmap, RT5682_CALIB_ADC_CTRL, 0x7005);
	FUNC4(rt5682->regmap, RT5682_STO1_ADC_MIXER, 0x686c);
	FUNC4(rt5682->regmap, RT5682_CAL_REC, 0x0d0d);
	FUNC4(rt5682->regmap, RT5682_HP_CALIB_CTRL_2, 0x0321);
	FUNC4(rt5682->regmap, RT5682_HP_LOGIC_CTRL_2, 0x0004);
	FUNC4(rt5682->regmap, RT5682_HP_CALIB_CTRL_1, 0x7c00);
	FUNC4(rt5682->regmap, RT5682_HP_CALIB_CTRL_3, 0x06a1);
	FUNC4(rt5682->regmap, RT5682_A_DAC1_MUX, 0x0311);
	FUNC4(rt5682->regmap, RT5682_HP_CALIB_CTRL_1, 0x7c00);

	FUNC4(rt5682->regmap, RT5682_HP_CALIB_CTRL_1, 0xfc00);

	for (count = 0; count < 60; count++) {
		FUNC3(rt5682->regmap, RT5682_HP_CALIB_STA_1, &value);
		if (!(value & 0x8000))
			break;

		FUNC6(10000, 10005);
	}

	if (count >= 60)
		FUNC2("HP Calibration Failure\n");

	/* restore settings */
	FUNC4(rt5682->regmap, RT5682_PWR_ANLG_1, 0x02af);
	FUNC4(rt5682->regmap, RT5682_MICBIAS_2, 0x0080);
	FUNC4(rt5682->regmap, RT5682_GLB_CLK, 0x0000);
	FUNC4(rt5682->regmap, RT5682_PWR_DIG_1, 0x0000);
	FUNC4(rt5682->regmap, RT5682_CHOP_DAC, 0x2000);
	FUNC4(rt5682->regmap, RT5682_CALIB_ADC_CTRL, 0x2005);
	FUNC4(rt5682->regmap, RT5682_STO1_ADC_MIXER, 0xc0c4);

	FUNC1(&rt5682->calibrate_mutex);

}