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
struct rt5665_priv {int calibration_done; int /*<<< orphan*/  calibrate_mutex; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5665_ADDA_CLK_1 ; 
 int /*<<< orphan*/  RT5665_ASRC_8 ; 
 int /*<<< orphan*/  RT5665_BIAS_CUR_CTRL_8 ; 
 int /*<<< orphan*/  RT5665_CALIB_ADC_CTRL ; 
 int /*<<< orphan*/  RT5665_CHOP_DAC ; 
 int /*<<< orphan*/  RT5665_DIG_MISC ; 
 int /*<<< orphan*/  RT5665_EJD_CTRL_1 ; 
 int /*<<< orphan*/  RT5665_GLB_CLK ; 
 int /*<<< orphan*/  RT5665_HP_CALIB_CTRL_1 ; 
 int /*<<< orphan*/  RT5665_HP_CALIB_CTRL_2 ; 
 int /*<<< orphan*/  RT5665_HP_CALIB_STA_1 ; 
 int /*<<< orphan*/  RT5665_HP_CHARGE_PUMP_1 ; 
 int /*<<< orphan*/  RT5665_HP_LOGIC_CTRL_2 ; 
 int /*<<< orphan*/  RT5665_MICBIAS_2 ; 
 int /*<<< orphan*/  RT5665_MONOMIX_IN_GAIN ; 
 int /*<<< orphan*/  RT5665_MONO_AMP_CALIB_CTRL_1 ; 
 int /*<<< orphan*/  RT5665_MONO_AMP_CALIB_STA1 ; 
 int /*<<< orphan*/  RT5665_MONO_OUT ; 
 int /*<<< orphan*/  RT5665_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5665_PWR_DIG_1 ; 
 int /*<<< orphan*/  RT5665_PWR_MIXER ; 
 int /*<<< orphan*/  RT5665_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static void FUNC9(struct rt5665_priv *rt5665)
{
	int value, count;

	FUNC0(&rt5665->calibrate_mutex);

	FUNC3(rt5665->regmap, true);

	FUNC7(rt5665->regmap, RT5665_RESET, 0);
	FUNC7(rt5665->regmap, RT5665_BIAS_CUR_CTRL_8, 0xa602);
	FUNC7(rt5665->regmap, RT5665_HP_CHARGE_PUMP_1, 0x0c26);
	FUNC7(rt5665->regmap, RT5665_MONOMIX_IN_GAIN, 0x021f);
	FUNC7(rt5665->regmap, RT5665_MONO_OUT, 0x480a);
	FUNC7(rt5665->regmap, RT5665_PWR_MIXER, 0x083f);
	FUNC7(rt5665->regmap, RT5665_PWR_DIG_1, 0x0180);
	FUNC7(rt5665->regmap, RT5665_EJD_CTRL_1, 0x4040);
	FUNC7(rt5665->regmap, RT5665_HP_LOGIC_CTRL_2, 0x0000);
	FUNC7(rt5665->regmap, RT5665_DIG_MISC, 0x0001);
	FUNC7(rt5665->regmap, RT5665_MICBIAS_2, 0x0380);
	FUNC7(rt5665->regmap, RT5665_GLB_CLK, 0x8000);
	FUNC7(rt5665->regmap, RT5665_ADDA_CLK_1, 0x1000);
	FUNC7(rt5665->regmap, RT5665_CHOP_DAC, 0x3030);
	FUNC7(rt5665->regmap, RT5665_CALIB_ADC_CTRL, 0x3c05);
	FUNC7(rt5665->regmap, RT5665_PWR_ANLG_1, 0xaa3e);
	FUNC8(15000, 20000);
	FUNC7(rt5665->regmap, RT5665_PWR_ANLG_1, 0xfe7e);
	FUNC7(rt5665->regmap, RT5665_HP_CALIB_CTRL_2, 0x0321);

	FUNC7(rt5665->regmap, RT5665_HP_CALIB_CTRL_1, 0xfc00);
	count = 0;
	while (true) {
		FUNC6(rt5665->regmap, RT5665_HP_CALIB_STA_1, &value);
		if (value & 0x8000)
			FUNC8(10000, 10005);
		else
			break;

		if (count > 60) {
			FUNC2("HP Calibration Failure\n");
			FUNC7(rt5665->regmap, RT5665_RESET, 0);
			FUNC3(rt5665->regmap, false);
			goto out_unlock;
		}

		count++;
	}

	FUNC7(rt5665->regmap, RT5665_MONO_AMP_CALIB_CTRL_1, 0x9e24);
	count = 0;
	while (true) {
		FUNC6(rt5665->regmap, RT5665_MONO_AMP_CALIB_STA1, &value);
		if (value & 0x8000)
			FUNC8(10000, 10005);
		else
			break;

		if (count > 60) {
			FUNC2("MONO Calibration Failure\n");
			FUNC7(rt5665->regmap, RT5665_RESET, 0);
			FUNC3(rt5665->regmap, false);
			goto out_unlock;
		}

		count++;
	}

	FUNC7(rt5665->regmap, RT5665_RESET, 0);
	FUNC3(rt5665->regmap, false);

	FUNC4(rt5665->regmap);
	FUNC5(rt5665->regmap);

	FUNC7(rt5665->regmap, RT5665_BIAS_CUR_CTRL_8, 0xa602);
	FUNC7(rt5665->regmap, RT5665_ASRC_8, 0x0120);

out_unlock:
	rt5665->calibration_done = true;
	FUNC1(&rt5665->calibrate_mutex);
}