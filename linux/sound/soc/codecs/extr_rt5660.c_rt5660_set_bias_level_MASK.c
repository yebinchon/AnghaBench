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
struct rt5660_priv {int /*<<< orphan*/  mclk; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RT5660_DIG_GATE_CTRL ; 
 int /*<<< orphan*/  RT5660_GEN_CTRL1 ; 
 int /*<<< orphan*/  RT5660_PWR_ANLG1 ; 
 int RT5660_PWR_BG ; 
 int RT5660_PWR_FV1 ; 
 int RT5660_PWR_FV2 ; 
 int RT5660_PWR_MB ; 
 int RT5660_PWR_VREF1 ; 
 int RT5660_PWR_VREF2 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct rt5660_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component,
			enum snd_soc_bias_level level)
{
	struct rt5660_priv *rt5660 = FUNC4(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		FUNC5(component, RT5660_GEN_CTRL1,
			RT5660_DIG_GATE_CTRL, RT5660_DIG_GATE_CTRL);

		if (FUNC0(rt5660->mclk))
			break;

		if (FUNC3(component) == SND_SOC_BIAS_ON) {
			FUNC1(rt5660->mclk);
		} else {
			ret = FUNC2(rt5660->mclk);
			if (ret)
				return ret;
		}
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC3(component) == SND_SOC_BIAS_OFF) {
			FUNC5(component, RT5660_PWR_ANLG1,
				RT5660_PWR_VREF1 | RT5660_PWR_MB |
				RT5660_PWR_BG | RT5660_PWR_VREF2,
				RT5660_PWR_VREF1 | RT5660_PWR_MB |
				RT5660_PWR_BG | RT5660_PWR_VREF2);
			FUNC6(10000, 15000);
			FUNC5(component, RT5660_PWR_ANLG1,
				RT5660_PWR_FV1 | RT5660_PWR_FV2,
				RT5660_PWR_FV1 | RT5660_PWR_FV2);
		}
		break;

	case SND_SOC_BIAS_OFF:
		FUNC5(component, RT5660_GEN_CTRL1,
			RT5660_DIG_GATE_CTRL, 0);
		break;

	default:
		break;
	}

	return 0;
}