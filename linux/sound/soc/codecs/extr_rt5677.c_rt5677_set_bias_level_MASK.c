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
struct rt5677_priv {int is_vref_slow; int /*<<< orphan*/  dsp_vad_en; int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 scalar_t__ RT5677_BIAS_CUR4 ; 
 scalar_t__ RT5677_DIG_MISC ; 
 int RT5677_LDO1_SEL_MASK ; 
 int RT5677_LDO1_SEL_SFT ; 
 int RT5677_LDO2_SEL_MASK ; 
 int RT5677_LDO2_SEL_SFT ; 
 scalar_t__ RT5677_PR_BASE ; 
 scalar_t__ RT5677_PWR_ANLG1 ; 
 scalar_t__ RT5677_PWR_ANLG2 ; 
 int RT5677_PWR_BG ; 
 int RT5677_PWR_CORE ; 
 scalar_t__ RT5677_PWR_DIG1 ; 
 int RT5677_PWR_FV1 ; 
 int RT5677_PWR_FV2 ; 
 int RT5677_PWR_MB ; 
 int RT5677_PWR_VREF1 ; 
 int RT5677_PWR_VREF2 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct rt5677_priv* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
			enum snd_soc_bias_level level)
{
	struct rt5677_priv *rt5677 = FUNC4(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		if (FUNC3(component) == SND_SOC_BIAS_STANDBY) {
			FUNC2(component, false);

			FUNC0(rt5677->regmap, RT5677_PWR_ANLG1,
				RT5677_LDO1_SEL_MASK | RT5677_LDO2_SEL_MASK,
				5 << RT5677_LDO1_SEL_SFT |
				5 << RT5677_LDO2_SEL_SFT);
			FUNC0(rt5677->regmap,
				RT5677_PR_BASE + RT5677_BIAS_CUR4,
				0x0f00, 0x0f00);
			FUNC0(rt5677->regmap, RT5677_PWR_ANLG1,
				RT5677_PWR_FV1 | RT5677_PWR_FV2 |
				RT5677_PWR_VREF1 | RT5677_PWR_MB |
				RT5677_PWR_BG | RT5677_PWR_VREF2,
				RT5677_PWR_VREF1 | RT5677_PWR_MB |
				RT5677_PWR_BG | RT5677_PWR_VREF2);
			rt5677->is_vref_slow = false;
			FUNC0(rt5677->regmap, RT5677_PWR_ANLG2,
				RT5677_PWR_CORE, RT5677_PWR_CORE);
			FUNC0(rt5677->regmap, RT5677_DIG_MISC,
				0x1, 0x1);
		}
		break;

	case SND_SOC_BIAS_STANDBY:
		break;

	case SND_SOC_BIAS_OFF:
		FUNC0(rt5677->regmap, RT5677_DIG_MISC, 0x1, 0x0);
		FUNC1(rt5677->regmap, RT5677_PWR_DIG1, 0x0000);
		FUNC1(rt5677->regmap, RT5677_PWR_ANLG1,
			2 << RT5677_LDO1_SEL_SFT |
			2 << RT5677_LDO2_SEL_SFT);
		FUNC0(rt5677->regmap, RT5677_PWR_ANLG2,
			RT5677_PWR_CORE, 0);
		FUNC0(rt5677->regmap,
			RT5677_PR_BASE + RT5677_BIAS_CUR4, 0x0f00, 0x0000);

		if (rt5677->dsp_vad_en)
			FUNC2(component, true);
		break;

	default:
		break;
	}

	return 0;
}