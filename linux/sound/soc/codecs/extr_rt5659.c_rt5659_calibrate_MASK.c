#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rt5659_priv {int /*<<< orphan*/  regmap; TYPE_1__* component; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5659_A_DAC_MUX ; 
 int /*<<< orphan*/  RT5659_BIAS_CUR_CTRL_8 ; 
 int /*<<< orphan*/  RT5659_CALIB_ADC_CTRL ; 
 int /*<<< orphan*/  RT5659_CAL_REC ; 
 int /*<<< orphan*/  RT5659_CHOP_DAC ; 
 int /*<<< orphan*/  RT5659_CLASSD_0 ; 
 int /*<<< orphan*/  RT5659_CLASSD_1 ; 
 int /*<<< orphan*/  RT5659_CLASSD_2 ; 
 int /*<<< orphan*/  RT5659_CLASSD_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_DEPOP_1 ; 
 int /*<<< orphan*/  RT5659_DIG_MISC ; 
 int /*<<< orphan*/  RT5659_GLB_CLK ; 
 int /*<<< orphan*/  RT5659_HP_CALIB_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_HP_CALIB_CTRL_2 ; 
 int /*<<< orphan*/  RT5659_HP_CALIB_CTRL_7 ; 
 int /*<<< orphan*/  RT5659_HP_CHARGE_PUMP_1 ; 
 int /*<<< orphan*/  RT5659_HP_VOL ; 
 int /*<<< orphan*/  RT5659_MICBIAS_2 ; 
 int /*<<< orphan*/  RT5659_MONOMIX_IN_GAIN ; 
 int /*<<< orphan*/  RT5659_MONO_AMP_CALIB_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_MONO_GAIN ; 
 int /*<<< orphan*/  RT5659_MONO_NG2_CTRL_5 ; 
 int /*<<< orphan*/  RT5659_MONO_OUT ; 
 int /*<<< orphan*/  RT5659_PRE_DIV_1 ; 
 int /*<<< orphan*/  RT5659_PRE_DIV_2 ; 
 int /*<<< orphan*/  RT5659_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5659_PWR_ANLG_3 ; 
 int /*<<< orphan*/  RT5659_PWR_DIG_1 ; 
 int /*<<< orphan*/  RT5659_PWR_DIG_2 ; 
 int /*<<< orphan*/  RT5659_PWR_MIXER ; 
 int /*<<< orphan*/  RT5659_PWR_VOL ; 
 int /*<<< orphan*/  RT5659_SPK_DC_CAILB_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_SPK_DC_CAILB_CTRL_3 ; 
 int /*<<< orphan*/  RT5659_SPK_L_MIXER ; 
 int /*<<< orphan*/  RT5659_SPK_R_MIXER ; 
 int /*<<< orphan*/  RT5659_SPO_AMP_GAIN ; 
 int /*<<< orphan*/  RT5659_SPO_VOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct rt5659_priv *rt5659)
{
	int value, count;

	/* Calibrate HPO Start */
	/* Fine tune HP Performance */
	FUNC4(rt5659->regmap, RT5659_BIAS_CUR_CTRL_8, 0xa502);
	FUNC4(rt5659->regmap, RT5659_CHOP_DAC, 0x3030);

	FUNC4(rt5659->regmap, RT5659_PRE_DIV_1, 0xef00);
	FUNC4(rt5659->regmap, RT5659_PRE_DIV_2, 0xeffc);
	FUNC4(rt5659->regmap, RT5659_MICBIAS_2, 0x0280);
	FUNC4(rt5659->regmap, RT5659_DIG_MISC, 0x0001);
	FUNC4(rt5659->regmap, RT5659_GLB_CLK, 0x8000);

	FUNC4(rt5659->regmap, RT5659_PWR_ANLG_1, 0xaa7e);
	FUNC1(60);
	FUNC4(rt5659->regmap, RT5659_PWR_ANLG_1, 0xfe7e);
	FUNC1(50);
	FUNC4(rt5659->regmap, RT5659_PWR_ANLG_3, 0x0004);
	FUNC4(rt5659->regmap, RT5659_PWR_DIG_2, 0x0400);
	FUNC1(50);
	FUNC4(rt5659->regmap, RT5659_PWR_DIG_1, 0x0080);
	FUNC5(10000, 10005);
	FUNC4(rt5659->regmap, RT5659_DEPOP_1, 0x0009);
	FUNC1(50);
	FUNC4(rt5659->regmap, RT5659_PWR_DIG_1, 0x0f80);
	FUNC1(50);
	FUNC4(rt5659->regmap, RT5659_HP_CHARGE_PUMP_1, 0x0e16);
	FUNC1(50);

	/* Enalbe K ADC Power And Clock */
	FUNC4(rt5659->regmap, RT5659_CAL_REC, 0x0505);
	FUNC1(50);
	FUNC4(rt5659->regmap, RT5659_PWR_ANLG_3, 0x0184);
	FUNC4(rt5659->regmap, RT5659_CALIB_ADC_CTRL, 0x3c05);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x20c1);

	/* K Headphone */
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x2cc1);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, 0x5100);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_7, 0x0014);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, 0xd100);
	FUNC1(60);

	/* Manual K ADC Offset */
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x2cc1);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, 0x4900);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_7, 0x0016);
	FUNC3(rt5659->regmap, RT5659_HP_CALIB_CTRL_1,
		0x8000, 0x8000);

	count = 0;
	while (true) {
		FUNC2(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, &value);
		if (value & 0x8000)
			FUNC5(10000, 10005);
		else
			break;

		if (count > 30) {
			FUNC0(rt5659->component->dev,
				"HP Calibration 1 Failure\n");
			return;
		}

		count++;
	}

	/* Manual K Internal Path Offset */
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x2cc1);
	FUNC4(rt5659->regmap, RT5659_HP_VOL, 0x0000);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, 0x4500);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_7, 0x001f);
	FUNC3(rt5659->regmap, RT5659_HP_CALIB_CTRL_1,
		0x8000, 0x8000);

	count = 0;
	while (true) {
		FUNC2(rt5659->regmap, RT5659_HP_CALIB_CTRL_1, &value);
		if (value & 0x8000)
			FUNC5(10000, 10005);
		else
			break;

		if (count > 85) {
			FUNC0(rt5659->component->dev,
				"HP Calibration 2 Failure\n");
			return;
		}

		count++;
	}

	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_7, 0x0000);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x20c0);
	/* Calibrate HPO End */

	/* Calibrate SPO Start */
	FUNC4(rt5659->regmap, RT5659_CLASSD_0, 0x2021);
	FUNC4(rt5659->regmap, RT5659_CLASSD_CTRL_1, 0x0260);
	FUNC4(rt5659->regmap, RT5659_PWR_MIXER, 0x3000);
	FUNC4(rt5659->regmap, RT5659_PWR_VOL, 0xc000);
	FUNC4(rt5659->regmap, RT5659_A_DAC_MUX, 0x000c);
	FUNC4(rt5659->regmap, RT5659_DIG_MISC, 0x8000);
	FUNC4(rt5659->regmap, RT5659_SPO_VOL, 0x0808);
	FUNC4(rt5659->regmap, RT5659_SPK_L_MIXER, 0x001e);
	FUNC4(rt5659->regmap, RT5659_SPK_R_MIXER, 0x001e);
	FUNC4(rt5659->regmap, RT5659_CLASSD_1, 0x0803);
	FUNC4(rt5659->regmap, RT5659_CLASSD_2, 0x0554);
	FUNC4(rt5659->regmap, RT5659_SPO_AMP_GAIN, 0x1103);

	/* Enalbe K ADC Power And Clock */
	FUNC4(rt5659->regmap, RT5659_CAL_REC, 0x0909);
	FUNC3(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x0001,
		0x0001);

	/* Start Calibration */
	FUNC4(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_3, 0x0000);
	FUNC4(rt5659->regmap, RT5659_CLASSD_0, 0x0021);
	FUNC4(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_1, 0x3e80);
	FUNC3(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_1,
		0x8000, 0x8000);

	count = 0;
	while (true) {
		FUNC2(rt5659->regmap,
				RT5659_SPK_DC_CAILB_CTRL_1, &value);
		if (value & 0x8000)
			FUNC5(10000, 10005);
		else
			break;

		if (count > 10) {
			FUNC0(rt5659->component->dev,
				"SPK Calibration Failure\n");
			return;
		}

		count++;
	}
	/* Calibrate SPO End */

	/* Calibrate MONO Start */
	FUNC4(rt5659->regmap, RT5659_DIG_MISC, 0x0000);
	FUNC4(rt5659->regmap, RT5659_MONOMIX_IN_GAIN, 0x021f);
	FUNC4(rt5659->regmap, RT5659_MONO_OUT, 0x480a);
	/* MONO NG2 GAIN 5dB */
	FUNC4(rt5659->regmap, RT5659_MONO_GAIN, 0x0003);
	FUNC4(rt5659->regmap, RT5659_MONO_NG2_CTRL_5, 0x0009);

	/* Start Calibration */
	FUNC4(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_3, 0x000f);
	FUNC4(rt5659->regmap, RT5659_MONO_AMP_CALIB_CTRL_1, 0x1e00);
	FUNC3(rt5659->regmap, RT5659_MONO_AMP_CALIB_CTRL_1,
		0x8000, 0x8000);

	count = 0;
	while (true) {
		FUNC2(rt5659->regmap, RT5659_MONO_AMP_CALIB_CTRL_1,
			&value);
		if (value & 0x8000)
			FUNC5(10000, 10005);
		else
			break;

		if (count > 35) {
			FUNC0(rt5659->component->dev,
				"Mono Calibration Failure\n");
			return;
		}

		count++;
	}

	FUNC4(rt5659->regmap, RT5659_SPK_DC_CAILB_CTRL_3, 0x0003);
	/* Calibrate MONO End */

	/* Power Off */
	FUNC4(rt5659->regmap, RT5659_CAL_REC, 0x0808);
	FUNC4(rt5659->regmap, RT5659_PWR_ANLG_3, 0x0000);
	FUNC4(rt5659->regmap, RT5659_CALIB_ADC_CTRL, 0x2005);
	FUNC4(rt5659->regmap, RT5659_HP_CALIB_CTRL_2, 0x20c0);
	FUNC4(rt5659->regmap, RT5659_DEPOP_1, 0x0000);
	FUNC4(rt5659->regmap, RT5659_CLASSD_1, 0x0011);
	FUNC4(rt5659->regmap, RT5659_CLASSD_2, 0x0150);
	FUNC4(rt5659->regmap, RT5659_PWR_ANLG_1, 0xfe3e);
	FUNC4(rt5659->regmap, RT5659_MONO_OUT, 0xc80a);
	FUNC4(rt5659->regmap, RT5659_MONO_AMP_CALIB_CTRL_1, 0x1e04);
	FUNC4(rt5659->regmap, RT5659_PWR_MIXER, 0x0000);
	FUNC4(rt5659->regmap, RT5659_PWR_VOL, 0x0000);
	FUNC4(rt5659->regmap, RT5659_PWR_DIG_1, 0x0000);
	FUNC4(rt5659->regmap, RT5659_PWR_DIG_2, 0x0000);
	FUNC4(rt5659->regmap, RT5659_PWR_ANLG_1, 0x003e);
	FUNC4(rt5659->regmap, RT5659_CLASSD_CTRL_1, 0x0060);
	FUNC4(rt5659->regmap, RT5659_CLASSD_0, 0x2021);
	FUNC4(rt5659->regmap, RT5659_GLB_CLK, 0x0000);
	FUNC4(rt5659->regmap, RT5659_MICBIAS_2, 0x0080);
	FUNC4(rt5659->regmap, RT5659_HP_VOL, 0x8080);
	FUNC4(rt5659->regmap, RT5659_HP_CHARGE_PUMP_1, 0x0c16);
}