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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5670_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ RT5670_DEPOP_M1 ; 
 scalar_t__ RT5670_DEPOP_M3 ; 
 int /*<<< orphan*/  RT5670_GEN_CTRL2 ; 
 int /*<<< orphan*/  RT5670_HP_VOL ; 
 int RT5670_L_MUTE ; 
 scalar_t__ RT5670_MAMP_INT_REG2 ; 
 scalar_t__ RT5670_PR_BASE ; 
 int RT5670_R_MUTE ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct rt5670_priv* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct rt5670_priv *rt5670 = FUNC4(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		/* headphone unmute sequence */
		FUNC3(rt5670->regmap, RT5670_PR_BASE +
				RT5670_MAMP_INT_REG2, 0xb400);
		FUNC3(rt5670->regmap, RT5670_DEPOP_M3, 0x0772);
		FUNC3(rt5670->regmap, RT5670_DEPOP_M1, 0x805d);
		FUNC3(rt5670->regmap, RT5670_DEPOP_M1, 0x831d);
		FUNC2(rt5670->regmap, RT5670_GEN_CTRL2,
				0x0300, 0x0300);
		FUNC2(rt5670->regmap, RT5670_HP_VOL,
			RT5670_L_MUTE | RT5670_R_MUTE, 0);
		FUNC1(80);
		FUNC3(rt5670->regmap, RT5670_DEPOP_M1, 0x8019);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		/* headphone mute sequence */
		FUNC3(rt5670->regmap, RT5670_PR_BASE +
				RT5670_MAMP_INT_REG2, 0xb400);
		FUNC3(rt5670->regmap, RT5670_DEPOP_M3, 0x0772);
		FUNC3(rt5670->regmap, RT5670_DEPOP_M1, 0x803d);
		FUNC0(10);
		FUNC3(rt5670->regmap, RT5670_DEPOP_M1, 0x831d);
		FUNC0(10);
		FUNC2(rt5670->regmap, RT5670_HP_VOL,
				   RT5670_L_MUTE | RT5670_R_MUTE,
				   RT5670_L_MUTE | RT5670_R_MUTE);
		FUNC1(20);
		FUNC2(rt5670->regmap,
				   RT5670_GEN_CTRL2, 0x0300, 0x0);
		FUNC3(rt5670->regmap, RT5670_DEPOP_M1, 0x8019);
		FUNC3(rt5670->regmap, RT5670_DEPOP_M3, 0x0707);
		FUNC3(rt5670->regmap, RT5670_PR_BASE +
				RT5670_MAMP_INT_REG2, 0xfc00);
		break;

	default:
		return 0;
	}

	return 0;
}