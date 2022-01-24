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
struct rt5663_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5663_ADDA_CLK_1 ; 
 int /*<<< orphan*/  RT5663_ADDA_RST ; 
 int /*<<< orphan*/  RT5663_ANA_BIAS_CUR_1 ; 
 int /*<<< orphan*/  RT5663_ANA_BIAS_CUR_4 ; 
 int /*<<< orphan*/  RT5663_BIAS_CUR_8 ; 
 int /*<<< orphan*/  RT5663_BYPASS_STO_DAC ; 
 int /*<<< orphan*/  RT5663_CBJ_1 ; 
 int /*<<< orphan*/  RT5663_CHARGE_PUMP_1 ; 
 int /*<<< orphan*/  RT5663_CHARGE_PUMP_2 ; 
 int /*<<< orphan*/  RT5663_CHOP_ADC ; 
 int /*<<< orphan*/  RT5663_DACREF_LDO ; 
 int /*<<< orphan*/  RT5663_DEPOP_1 ; 
 int /*<<< orphan*/  RT5663_DEPOP_2 ; 
 int /*<<< orphan*/  RT5663_DIG_MISC ; 
 int /*<<< orphan*/  RT5663_DUMMY_1 ; 
 int /*<<< orphan*/  RT5663_DUMMY_2 ; 
 int /*<<< orphan*/  RT5663_EM_JACK_TYPE_1 ; 
 int /*<<< orphan*/  RT5663_EM_JACK_TYPE_2 ; 
 int /*<<< orphan*/  RT5663_GLB_CLK ; 
 int /*<<< orphan*/  RT5663_HP_BIAS ; 
 int /*<<< orphan*/  RT5663_HP_CALIB_1 ; 
 int /*<<< orphan*/  RT5663_HP_CALIB_1_1 ; 
 int /*<<< orphan*/  RT5663_HP_CALIB_2 ; 
 int /*<<< orphan*/  RT5663_HP_CALIB_3 ; 
 int /*<<< orphan*/  RT5663_HP_CALIB_7 ; 
 int /*<<< orphan*/  RT5663_HP_CHARGE_PUMP_1 ; 
 int /*<<< orphan*/  RT5663_HP_IMP_SEN_19 ; 
 int /*<<< orphan*/  RT5663_HP_OUT_EN ; 
 int /*<<< orphan*/  RT5663_IL_CMD_2 ; 
 int /*<<< orphan*/  RT5663_INT_ST_2 ; 
 int /*<<< orphan*/  RT5663_PRE_DIV_GATING_1 ; 
 int /*<<< orphan*/  RT5663_PRE_DIV_GATING_2 ; 
 int /*<<< orphan*/  RT5663_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5663_PWR_ANLG_2 ; 
 int /*<<< orphan*/  RT5663_PWR_ANLG_3 ; 
 int /*<<< orphan*/  RT5663_PWR_DIG_1 ; 
 int /*<<< orphan*/  RT5663_PWR_DIG_2 ; 
 int /*<<< orphan*/  RT5663_RC_CLK ; 
 int /*<<< orphan*/  RT5663_RECMIX ; 
 int /*<<< orphan*/  RT5663_RESET ; 
 int /*<<< orphan*/  RT5663_STO1_ADC_MIXER ; 
 int /*<<< orphan*/  RT5663_STO1_HPF_ADJ1 ; 
 int /*<<< orphan*/  RT5663_STO_DAC_MIXER ; 
 int /*<<< orphan*/  RT5663_STO_DRE_10 ; 
 int /*<<< orphan*/  RT5663_STO_DRE_9 ; 
 int /*<<< orphan*/  RT5663_VREFADJ_OP ; 
 int /*<<< orphan*/  RT5663_VREF_RECMIX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct rt5663_priv *rt5663)
{
	int value, count;

	FUNC2(rt5663->regmap, RT5663_RESET, 0x0000);
	FUNC0(20);
	FUNC2(rt5663->regmap, RT5663_ANA_BIAS_CUR_4, 0x00a1);
	FUNC2(rt5663->regmap, RT5663_RC_CLK, 0x0380);
	FUNC2(rt5663->regmap, RT5663_GLB_CLK, 0x8000);
	FUNC2(rt5663->regmap, RT5663_ADDA_CLK_1, 0x1000);
	FUNC2(rt5663->regmap, RT5663_VREF_RECMIX, 0x0032);
	FUNC2(rt5663->regmap, RT5663_HP_IMP_SEN_19, 0x000c);
	FUNC2(rt5663->regmap, RT5663_DUMMY_1, 0x0324);
	FUNC2(rt5663->regmap, RT5663_DIG_MISC, 0x8001);
	FUNC2(rt5663->regmap, RT5663_VREFADJ_OP, 0x0f28);
	FUNC2(rt5663->regmap, RT5663_PWR_ANLG_1, 0xa23b);
	FUNC0(30);
	FUNC2(rt5663->regmap, RT5663_PWR_ANLG_1, 0xf23b);
	FUNC2(rt5663->regmap, RT5663_PWR_ANLG_2, 0x8000);
	FUNC2(rt5663->regmap, RT5663_PWR_ANLG_3, 0x0008);
	FUNC2(rt5663->regmap, RT5663_PRE_DIV_GATING_1, 0xffff);
	FUNC2(rt5663->regmap, RT5663_PRE_DIV_GATING_2, 0xffff);
	FUNC2(rt5663->regmap, RT5663_CBJ_1, 0x8c10);
	FUNC2(rt5663->regmap, RT5663_IL_CMD_2, 0x00c1);
	FUNC2(rt5663->regmap, RT5663_EM_JACK_TYPE_1, 0xb880);
	FUNC2(rt5663->regmap, RT5663_EM_JACK_TYPE_2, 0x4110);
	FUNC2(rt5663->regmap, RT5663_EM_JACK_TYPE_2, 0x4118);

	count = 0;
	while (true) {
		FUNC1(rt5663->regmap, RT5663_INT_ST_2, &value);
		if (!(value & 0x80))
			FUNC3(10000, 10005);
		else
			break;

		if (++count > 200)
			break;
	}

	FUNC2(rt5663->regmap, RT5663_HP_IMP_SEN_19, 0x0000);
	FUNC2(rt5663->regmap, RT5663_DEPOP_2, 0x3003);
	FUNC2(rt5663->regmap, RT5663_DEPOP_1, 0x0038);
	FUNC2(rt5663->regmap, RT5663_DEPOP_1, 0x003b);
	FUNC2(rt5663->regmap, RT5663_PWR_DIG_2, 0x8400);
	FUNC2(rt5663->regmap, RT5663_PWR_DIG_1, 0x8df8);
	FUNC2(rt5663->regmap, RT5663_PWR_ANLG_2, 0x8003);
	FUNC2(rt5663->regmap, RT5663_PWR_ANLG_3, 0x018c);
	FUNC2(rt5663->regmap, RT5663_HP_CHARGE_PUMP_1, 0x1e32);
	FUNC2(rt5663->regmap, RT5663_DUMMY_2, 0x8089);
	FUNC2(rt5663->regmap, RT5663_DACREF_LDO, 0x3b0b);
	FUNC0(40);
	FUNC2(rt5663->regmap, RT5663_STO_DAC_MIXER, 0x0000);
	FUNC2(rt5663->regmap, RT5663_BYPASS_STO_DAC, 0x000c);
	FUNC2(rt5663->regmap, RT5663_HP_BIAS, 0xafaa);
	FUNC2(rt5663->regmap, RT5663_CHARGE_PUMP_1, 0x2224);
	FUNC2(rt5663->regmap, RT5663_HP_OUT_EN, 0x8088);
	FUNC2(rt5663->regmap, RT5663_STO_DRE_9, 0x0017);
	FUNC2(rt5663->regmap, RT5663_STO_DRE_10, 0x0017);
	FUNC2(rt5663->regmap, RT5663_STO1_ADC_MIXER, 0x4040);
	FUNC2(rt5663->regmap, RT5663_CHOP_ADC, 0x3000);
	FUNC2(rt5663->regmap, RT5663_RECMIX, 0x0005);
	FUNC2(rt5663->regmap, RT5663_ADDA_RST, 0xc000);
	FUNC2(rt5663->regmap, RT5663_STO1_HPF_ADJ1, 0x3320);
	FUNC2(rt5663->regmap, RT5663_HP_CALIB_2, 0x00c9);
	FUNC2(rt5663->regmap, RT5663_DUMMY_1, 0x004c);
	FUNC2(rt5663->regmap, RT5663_ANA_BIAS_CUR_1, 0x1111);
	FUNC2(rt5663->regmap, RT5663_BIAS_CUR_8, 0x4402);
	FUNC2(rt5663->regmap, RT5663_CHARGE_PUMP_2, 0x3311);
	FUNC2(rt5663->regmap, RT5663_HP_CALIB_1, 0x0069);
	FUNC2(rt5663->regmap, RT5663_HP_CALIB_3, 0x06ce);
	FUNC2(rt5663->regmap, RT5663_HP_CALIB_1_1, 0x6800);
	FUNC2(rt5663->regmap, RT5663_CHARGE_PUMP_2, 0x1100);
	FUNC2(rt5663->regmap, RT5663_HP_CALIB_7, 0x0057);
	FUNC2(rt5663->regmap, RT5663_HP_CALIB_1_1, 0xe800);

	count = 0;
	while (true) {
		FUNC1(rt5663->regmap, RT5663_HP_CALIB_1_1, &value);
		if (value & 0x8000)
			FUNC3(10000, 10005);
		else
			break;

		if (count > 200)
			return;
		count++;
	}

	FUNC2(rt5663->regmap, RT5663_HP_CALIB_1_1, 0x6200);
	FUNC2(rt5663->regmap, RT5663_HP_CALIB_7, 0x0059);
	FUNC2(rt5663->regmap, RT5663_HP_CALIB_1_1, 0xe200);

	count = 0;
	while (true) {
		FUNC1(rt5663->regmap, RT5663_HP_CALIB_1_1, &value);
		if (value & 0x8000)
			FUNC3(10000, 10005);
		else
			break;

		if (count > 200)
			return;
		count++;
	}

	FUNC2(rt5663->regmap, RT5663_EM_JACK_TYPE_1, 0xb8e0);
	FUNC3(10000, 10005);
	FUNC2(rt5663->regmap, RT5663_PWR_ANLG_1, 0x003b);
	FUNC3(10000, 10005);
	FUNC2(rt5663->regmap, RT5663_PWR_DIG_1, 0x0000);
	FUNC3(10000, 10005);
	FUNC2(rt5663->regmap, RT5663_DEPOP_1, 0x000b);
	FUNC3(10000, 10005);
	FUNC2(rt5663->regmap, RT5663_DEPOP_1, 0x0008);
	FUNC3(10000, 10005);
	FUNC2(rt5663->regmap, RT5663_PWR_ANLG_2, 0x0000);
	FUNC3(10000, 10005);
}