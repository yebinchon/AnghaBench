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
struct snd_soc_component {int dummy; } ;
struct rt5645_priv {scalar_t__ codec_type; int hp_on; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ CODEC_TYPE_RT5650 ; 
 int /*<<< orphan*/  RT5645_CHARGE_PUMP ; 
 int /*<<< orphan*/  RT5645_DEPOP_M1 ; 
 int /*<<< orphan*/  RT5645_DEPOP_M2 ; 
 int /*<<< orphan*/  RT5645_DEPOP_M3 ; 
 int RT5645_DEPOP_MAN ; 
 int RT5645_DEPOP_MASK ; 
 int RT5645_HP_CO_EN ; 
 int RT5645_HP_CO_MASK ; 
 scalar_t__ RT5645_HP_DCC_INT1 ; 
 int RT5645_HP_L_SMT_DIS ; 
 int RT5645_HP_L_SMT_MASK ; 
 int RT5645_HP_R_SMT_DIS ; 
 int RT5645_HP_R_SMT_MASK ; 
 int RT5645_HP_SG_DIS ; 
 int RT5645_HP_SG_EN ; 
 int RT5645_HP_SG_MASK ; 
 scalar_t__ RT5645_MAMP_INT_REG2 ; 
 scalar_t__ RT5645_PR_BASE ; 
 int /*<<< orphan*/  RT5645_PWR_ANLG1 ; 
 int RT5645_PWR_FV1 ; 
 int RT5645_PWR_FV2 ; 
 int RT5645_PWR_HA ; 
 int RT5645_PWR_HP_L ; 
 int RT5645_PWR_HP_R ; 
 int RT5645_PWR_HV_L ; 
 int RT5645_PWR_HV_R ; 
 int /*<<< orphan*/  RT5645_PWR_VOL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct rt5645_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component, int on)
{
	static int hp_amp_power_count;
	struct rt5645_priv *rt5645 = FUNC3(component);

	if (on) {
		if (hp_amp_power_count <= 0) {
			if (rt5645->codec_type == CODEC_TYPE_RT5650) {
				FUNC5(component, RT5645_DEPOP_M2, 0x3100);
				FUNC5(component, RT5645_CHARGE_PUMP,
					0x0e06);
				FUNC5(component, RT5645_DEPOP_M1, 0x000d);
				FUNC2(rt5645->regmap, RT5645_PR_BASE +
					RT5645_HP_DCC_INT1, 0x9f01);
				FUNC1(20);
				FUNC4(component, RT5645_DEPOP_M1,
					RT5645_HP_CO_MASK, RT5645_HP_CO_EN);
				FUNC2(rt5645->regmap, RT5645_PR_BASE +
					0x3e, 0x7400);
				FUNC5(component, RT5645_DEPOP_M3, 0x0737);
				FUNC2(rt5645->regmap, RT5645_PR_BASE +
					RT5645_MAMP_INT_REG2, 0xfc00);
				FUNC5(component, RT5645_DEPOP_M2, 0x1140);
				FUNC1(90);
				rt5645->hp_on = true;
			} else {
				/* depop parameters */
				FUNC4(component, RT5645_DEPOP_M2,
					RT5645_DEPOP_MASK, RT5645_DEPOP_MAN);
				FUNC5(component, RT5645_DEPOP_M1, 0x000d);
				FUNC2(rt5645->regmap, RT5645_PR_BASE +
					RT5645_HP_DCC_INT1, 0x9f01);
				FUNC0(150);
				/* headphone amp power on */
				FUNC4(component, RT5645_PWR_ANLG1,
					RT5645_PWR_FV1 | RT5645_PWR_FV2, 0);
				FUNC4(component, RT5645_PWR_VOL,
					RT5645_PWR_HV_L | RT5645_PWR_HV_R,
					RT5645_PWR_HV_L | RT5645_PWR_HV_R);
				FUNC4(component, RT5645_PWR_ANLG1,
					RT5645_PWR_HP_L | RT5645_PWR_HP_R |
					RT5645_PWR_HA,
					RT5645_PWR_HP_L | RT5645_PWR_HP_R |
					RT5645_PWR_HA);
				FUNC0(5);
				FUNC4(component, RT5645_PWR_ANLG1,
					RT5645_PWR_FV1 | RT5645_PWR_FV2,
					RT5645_PWR_FV1 | RT5645_PWR_FV2);

				FUNC4(component, RT5645_DEPOP_M1,
					RT5645_HP_CO_MASK | RT5645_HP_SG_MASK,
					RT5645_HP_CO_EN | RT5645_HP_SG_EN);
				FUNC2(rt5645->regmap, RT5645_PR_BASE +
					0x14, 0x1aaa);
				FUNC2(rt5645->regmap, RT5645_PR_BASE +
					0x24, 0x0430);
			}
		}
		hp_amp_power_count++;
	} else {
		hp_amp_power_count--;
		if (hp_amp_power_count <= 0) {
			if (rt5645->codec_type == CODEC_TYPE_RT5650) {
				FUNC2(rt5645->regmap, RT5645_PR_BASE +
					0x3e, 0x7400);
				FUNC5(component, RT5645_DEPOP_M3, 0x0737);
				FUNC2(rt5645->regmap, RT5645_PR_BASE +
					RT5645_MAMP_INT_REG2, 0xfc00);
				FUNC5(component, RT5645_DEPOP_M2, 0x1140);
				FUNC1(100);
				FUNC5(component, RT5645_DEPOP_M1, 0x0001);

			} else {
				FUNC4(component, RT5645_DEPOP_M1,
					RT5645_HP_SG_MASK |
					RT5645_HP_L_SMT_MASK |
					RT5645_HP_R_SMT_MASK,
					RT5645_HP_SG_DIS |
					RT5645_HP_L_SMT_DIS |
					RT5645_HP_R_SMT_DIS);
				/* headphone amp power down */
				FUNC5(component, RT5645_DEPOP_M1, 0x0000);
				FUNC4(component, RT5645_PWR_ANLG1,
					RT5645_PWR_HP_L | RT5645_PWR_HP_R |
					RT5645_PWR_HA, 0);
				FUNC4(component, RT5645_DEPOP_M2,
					RT5645_DEPOP_MASK, 0);
			}
		}
	}
}