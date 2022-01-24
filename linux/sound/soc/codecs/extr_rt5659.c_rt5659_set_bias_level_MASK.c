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
struct snd_soc_dapm_context {int bias_level; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5659_priv {int /*<<< orphan*/  mclk; int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int RT5659_DIG_GATE_CTRL ; 
 int /*<<< orphan*/  RT5659_DIG_MISC ; 
 int /*<<< orphan*/  RT5659_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5659_PWR_DIG_1 ; 
 int RT5659_PWR_FV1 ; 
 int RT5659_PWR_FV2 ; 
 int RT5659_PWR_LDO ; 
 int RT5659_PWR_MB ; 
 int RT5659_PWR_VREF1 ; 
 int RT5659_PWR_VREF2 ; 
#define  SND_SOC_BIAS_OFF 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_soc_component*) ; 
 struct rt5659_priv* FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component,
			enum snd_soc_bias_level level)
{
	struct snd_soc_dapm_context *dapm = FUNC5(component);
	struct rt5659_priv *rt5659 = FUNC6(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_PREPARE:
		FUNC4(rt5659->regmap, RT5659_DIG_MISC,
			RT5659_DIG_GATE_CTRL, RT5659_DIG_GATE_CTRL);
		FUNC4(rt5659->regmap, RT5659_PWR_DIG_1,
			RT5659_PWR_LDO,	RT5659_PWR_LDO);
		FUNC4(rt5659->regmap, RT5659_PWR_ANLG_1,
			RT5659_PWR_MB | RT5659_PWR_VREF1 | RT5659_PWR_VREF2,
			RT5659_PWR_MB | RT5659_PWR_VREF1 | RT5659_PWR_VREF2);
		FUNC3(20);
		FUNC4(rt5659->regmap, RT5659_PWR_ANLG_1,
			RT5659_PWR_FV1 | RT5659_PWR_FV2,
			RT5659_PWR_FV1 | RT5659_PWR_FV2);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (dapm->bias_level == SND_SOC_BIAS_OFF) {
			ret = FUNC1(rt5659->mclk);
			if (ret) {
				FUNC2(component->dev,
					"failed to enable MCLK: %d\n", ret);
				return ret;
			}
		}
		break;

	case SND_SOC_BIAS_OFF:
		FUNC4(rt5659->regmap, RT5659_PWR_DIG_1,
			RT5659_PWR_LDO, 0);
		FUNC4(rt5659->regmap, RT5659_PWR_ANLG_1,
			RT5659_PWR_MB | RT5659_PWR_VREF1 | RT5659_PWR_VREF2
			| RT5659_PWR_FV1 | RT5659_PWR_FV2,
			RT5659_PWR_MB | RT5659_PWR_VREF2);
		FUNC4(rt5659->regmap, RT5659_DIG_MISC,
			RT5659_DIG_GATE_CTRL, 0);
		FUNC0(rt5659->mclk);
		break;

	default:
		break;
	}

	return 0;
}