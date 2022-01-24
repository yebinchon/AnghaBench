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
 int /*<<< orphan*/  RT5663_BIAS_CUR_8 ; 
 int /*<<< orphan*/  RT5663_CALIB_ADC ; 
 int /*<<< orphan*/  RT5663_CHOP_DAC_L ; 
 int /*<<< orphan*/  RT5663_DIG_MISC ; 
 int /*<<< orphan*/  RT5663_GLB_CLK ; 
 int /*<<< orphan*/  RT5663_HP_CALIB_1 ; 
 int /*<<< orphan*/  RT5663_HP_CALIB_2 ; 
 int /*<<< orphan*/  RT5663_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5663_PWR_DIG_1 ; 
 int /*<<< orphan*/  RT5663_RC_CLK ; 
 int /*<<< orphan*/  RT5663_RECMIX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct rt5663_priv *rt5663)
{
	FUNC1(rt5663->regmap, RT5663_BIAS_CUR_8, 0xa402);
	FUNC1(rt5663->regmap, RT5663_PWR_DIG_1, 0x0100);
	FUNC1(rt5663->regmap, RT5663_RECMIX, 0x4040);
	FUNC1(rt5663->regmap, RT5663_DIG_MISC, 0x0001);
	FUNC1(rt5663->regmap, RT5663_RC_CLK, 0x0380);
	FUNC1(rt5663->regmap, RT5663_GLB_CLK, 0x8000);
	FUNC1(rt5663->regmap, RT5663_ADDA_CLK_1, 0x1000);
	FUNC1(rt5663->regmap, RT5663_CHOP_DAC_L, 0x3030);
	FUNC1(rt5663->regmap, RT5663_CALIB_ADC, 0x3c05);
	FUNC1(rt5663->regmap, RT5663_PWR_ANLG_1, 0xa23e);
	FUNC0(40);
	FUNC1(rt5663->regmap, RT5663_PWR_ANLG_1, 0xf23e);
	FUNC1(rt5663->regmap, RT5663_HP_CALIB_2, 0x0321);
	FUNC1(rt5663->regmap, RT5663_HP_CALIB_1, 0xfc00);
	FUNC0(500);
}