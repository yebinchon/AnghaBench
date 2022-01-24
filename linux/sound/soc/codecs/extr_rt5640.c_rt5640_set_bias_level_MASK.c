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
struct rt5640_priv {int /*<<< orphan*/  mclk; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT5640_DEPOP_M1 ; 
 int /*<<< orphan*/  RT5640_DEPOP_M2 ; 
 int /*<<< orphan*/  RT5640_DUMMY1 ; 
 int /*<<< orphan*/  RT5640_MICBIAS ; 
 int /*<<< orphan*/  RT5640_PWR_ANLG1 ; 
 int /*<<< orphan*/  RT5640_PWR_ANLG2 ; 
 int RT5640_PWR_BG ; 
 int /*<<< orphan*/  RT5640_PWR_DIG1 ; 
 int /*<<< orphan*/  RT5640_PWR_DIG2 ; 
 int RT5640_PWR_FV1 ; 
 int RT5640_PWR_FV2 ; 
 int RT5640_PWR_MB ; 
 int /*<<< orphan*/  RT5640_PWR_MIXER ; 
 int /*<<< orphan*/  RT5640_PWR_VOL ; 
 int RT5640_PWR_VREF1 ; 
 int RT5640_PWR_VREF2 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct rt5640_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component,
			enum snd_soc_bias_level level)
{
	struct rt5640_priv *rt5640 = FUNC4(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/*
		 * SND_SOC_BIAS_PREPARE is called while preparing for a
		 * transition to ON or away from ON. If current bias_level
		 * is SND_SOC_BIAS_ON, then it is preparing for a transition
		 * away from ON. Disable the clock in that case, otherwise
		 * enable it.
		 */
		if (FUNC0(rt5640->mclk))
			break;

		if (FUNC3(component) == SND_SOC_BIAS_ON) {
			FUNC1(rt5640->mclk);
		} else {
			ret = FUNC2(rt5640->mclk);
			if (ret)
				return ret;
		}
		break;

	case SND_SOC_BIAS_STANDBY:
		if (SND_SOC_BIAS_OFF == FUNC3(component)) {
			FUNC5(component, RT5640_PWR_ANLG1,
				RT5640_PWR_VREF1 | RT5640_PWR_MB |
				RT5640_PWR_BG | RT5640_PWR_VREF2,
				RT5640_PWR_VREF1 | RT5640_PWR_MB |
				RT5640_PWR_BG | RT5640_PWR_VREF2);
			FUNC7(10000, 15000);
			FUNC5(component, RT5640_PWR_ANLG1,
				RT5640_PWR_FV1 | RT5640_PWR_FV2,
				RT5640_PWR_FV1 | RT5640_PWR_FV2);
			FUNC5(component, RT5640_DUMMY1,
						0x0301, 0x0301);
			FUNC5(component, RT5640_MICBIAS,
						0x0030, 0x0030);
		}
		break;

	case SND_SOC_BIAS_OFF:
		FUNC6(component, RT5640_DEPOP_M1, 0x0004);
		FUNC6(component, RT5640_DEPOP_M2, 0x1100);
		FUNC5(component, RT5640_DUMMY1, 0x1, 0);
		FUNC6(component, RT5640_PWR_DIG1, 0x0000);
		FUNC6(component, RT5640_PWR_DIG2, 0x0000);
		FUNC6(component, RT5640_PWR_VOL, 0x0000);
		FUNC6(component, RT5640_PWR_MIXER, 0x0000);
		FUNC6(component, RT5640_PWR_ANLG1, 0x0000);
		FUNC6(component, RT5640_PWR_ANLG2, 0x0000);
		break;

	default:
		break;
	}

	return 0;
}