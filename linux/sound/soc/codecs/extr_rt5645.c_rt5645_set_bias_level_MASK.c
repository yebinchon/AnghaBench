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
struct rt5645_priv {int /*<<< orphan*/  en_button_func; int /*<<< orphan*/  jack_detect_work; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  RT5645_DEPOP_M2 ; 
 int RT5645_DIG_GATE_CTRL ; 
 int /*<<< orphan*/  RT5645_GEN_CTRL1 ; 
 int /*<<< orphan*/  RT5645_PWR_ANLG1 ; 
 int RT5645_PWR_BG ; 
 int RT5645_PWR_FV1 ; 
 int RT5645_PWR_FV2 ; 
 int RT5645_PWR_MB ; 
 int RT5645_PWR_VREF1 ; 
 int RT5645_PWR_VREF2 ; 
#define  SND_SOC_BIAS_OFF 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_component*) ; 
 struct rt5645_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component,
			enum snd_soc_bias_level level)
{
	struct rt5645_priv *rt5645 = FUNC5(component);

	switch (level) {
	case SND_SOC_BIAS_PREPARE:
		if (SND_SOC_BIAS_STANDBY == FUNC4(component)) {
			FUNC6(component, RT5645_PWR_ANLG1,
				RT5645_PWR_VREF1 | RT5645_PWR_MB |
				RT5645_PWR_BG | RT5645_PWR_VREF2,
				RT5645_PWR_VREF1 | RT5645_PWR_MB |
				RT5645_PWR_BG | RT5645_PWR_VREF2);
			FUNC0(10);
			FUNC6(component, RT5645_PWR_ANLG1,
				RT5645_PWR_FV1 | RT5645_PWR_FV2,
				RT5645_PWR_FV1 | RT5645_PWR_FV2);
			FUNC6(component, RT5645_GEN_CTRL1,
				RT5645_DIG_GATE_CTRL, RT5645_DIG_GATE_CTRL);
		}
		break;

	case SND_SOC_BIAS_STANDBY:
		FUNC6(component, RT5645_PWR_ANLG1,
			RT5645_PWR_VREF1 | RT5645_PWR_MB |
			RT5645_PWR_BG | RT5645_PWR_VREF2,
			RT5645_PWR_VREF1 | RT5645_PWR_MB |
			RT5645_PWR_BG | RT5645_PWR_VREF2);
		FUNC0(10);
		FUNC6(component, RT5645_PWR_ANLG1,
			RT5645_PWR_FV1 | RT5645_PWR_FV2,
			RT5645_PWR_FV1 | RT5645_PWR_FV2);
		if (FUNC4(component) == SND_SOC_BIAS_OFF) {
			FUNC7(component, RT5645_DEPOP_M2, 0x1140);
			FUNC2(40);
			if (rt5645->en_button_func)
				FUNC3(system_power_efficient_wq,
					&rt5645->jack_detect_work,
					FUNC1(0));
		}
		break;

	case SND_SOC_BIAS_OFF:
		FUNC7(component, RT5645_DEPOP_M2, 0x1100);
		if (!rt5645->en_button_func)
			FUNC6(component, RT5645_GEN_CTRL1,
					RT5645_DIG_GATE_CTRL, 0);
		FUNC6(component, RT5645_PWR_ANLG1,
				RT5645_PWR_VREF1 | RT5645_PWR_MB |
				RT5645_PWR_BG | RT5645_PWR_VREF2 |
				RT5645_PWR_FV1 | RT5645_PWR_FV2, 0x0);
		break;

	default:
		break;
	}

	return 0;
}