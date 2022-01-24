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
struct rt5659_priv {int hda_hp_plugged; int hda_mic_plugged; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5659_4BTN_IL_CMD_1 ; 
 int /*<<< orphan*/  RT5659_4BTN_IL_CMD_2 ; 
 int RT5659_4BTN_IL_EN ; 
 int RT5659_4BTN_IL_MASK ; 
 int /*<<< orphan*/  RT5659_GPIO_STA ; 
 int RT5659_IL_IRQ_EN ; 
 int RT5659_IL_IRQ_MASK ; 
 int /*<<< orphan*/  RT5659_IRQ_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_IRQ_CTRL_2 ; 
 int /*<<< orphan*/  RT5659_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5659_PWR_ANLG_2 ; 
 int /*<<< orphan*/  RT5659_PWR_ANLG_3 ; 
 int RT5659_PWR_FV2 ; 
 int RT5659_PWR_LDO2 ; 
 int RT5659_PWR_MB ; 
 int RT5659_PWR_MB1 ; 
 int RT5659_PWR_MIC_DET ; 
 int /*<<< orphan*/  RT5659_PWR_VOL ; 
 int RT5659_PWR_VREF2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rt5659_priv *rt5659)
{
	int value;

	FUNC1(rt5659->regmap, RT5659_GPIO_STA, &value);
	if (!(value & 0x8)) {
		rt5659->hda_hp_plugged = true;
		FUNC2(rt5659->regmap, RT5659_IRQ_CTRL_1,
			0x10, 0x0);
	} else {
		FUNC2(rt5659->regmap, RT5659_IRQ_CTRL_1,
			0x10, 0x10);
	}

	FUNC2(rt5659->regmap, RT5659_PWR_ANLG_1,
		RT5659_PWR_VREF2 | RT5659_PWR_MB,
		RT5659_PWR_VREF2 | RT5659_PWR_MB);
	FUNC0(20);
	FUNC2(rt5659->regmap, RT5659_PWR_ANLG_1,
		RT5659_PWR_FV2, RT5659_PWR_FV2);

	FUNC2(rt5659->regmap, RT5659_PWR_ANLG_3, RT5659_PWR_LDO2,
		RT5659_PWR_LDO2);
	FUNC2(rt5659->regmap, RT5659_PWR_ANLG_2, RT5659_PWR_MB1,
		RT5659_PWR_MB1);
	FUNC2(rt5659->regmap, RT5659_PWR_VOL, RT5659_PWR_MIC_DET,
		RT5659_PWR_MIC_DET);
	FUNC0(20);

	FUNC2(rt5659->regmap, RT5659_4BTN_IL_CMD_2,
		RT5659_4BTN_IL_MASK, RT5659_4BTN_IL_EN);
	FUNC1(rt5659->regmap, RT5659_4BTN_IL_CMD_1, &value);
	FUNC3(rt5659->regmap, RT5659_4BTN_IL_CMD_1, value);
	FUNC1(rt5659->regmap, RT5659_4BTN_IL_CMD_1, &value);

	if (value & 0x2000) {
		rt5659->hda_mic_plugged = true;
		FUNC2(rt5659->regmap, RT5659_IRQ_CTRL_2,
			0x2, 0x2);
	} else {
		FUNC2(rt5659->regmap, RT5659_IRQ_CTRL_2,
			0x2, 0x0);
	}

	FUNC2(rt5659->regmap, RT5659_IRQ_CTRL_2,
		RT5659_IL_IRQ_MASK, RT5659_IL_IRQ_EN);
}