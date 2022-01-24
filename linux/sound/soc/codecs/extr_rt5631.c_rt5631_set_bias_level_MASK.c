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
struct rt5631_priv {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int RT5631_PWR_FAST_VREF_CTRL ; 
 int RT5631_PWR_MAIN_BIAS ; 
 int /*<<< orphan*/  RT5631_PWR_MANAG_ADD1 ; 
 int /*<<< orphan*/  RT5631_PWR_MANAG_ADD2 ; 
 int /*<<< orphan*/  RT5631_PWR_MANAG_ADD3 ; 
 int /*<<< orphan*/  RT5631_PWR_MANAG_ADD4 ; 
 int RT5631_PWR_MICBIAS1_VOL ; 
 int RT5631_PWR_MICBIAS2_VOL ; 
 int RT5631_PWR_VREF ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct rt5631_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component,
			enum snd_soc_bias_level level)
{
	struct rt5631_priv *rt5631 = FUNC4(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		FUNC5(component, RT5631_PWR_MANAG_ADD2,
			RT5631_PWR_MICBIAS1_VOL | RT5631_PWR_MICBIAS2_VOL,
			RT5631_PWR_MICBIAS1_VOL | RT5631_PWR_MICBIAS2_VOL);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC3(component) == SND_SOC_BIAS_OFF) {
			FUNC5(component, RT5631_PWR_MANAG_ADD3,
				RT5631_PWR_VREF | RT5631_PWR_MAIN_BIAS,
				RT5631_PWR_VREF | RT5631_PWR_MAIN_BIAS);
			FUNC0(80);
			FUNC5(component, RT5631_PWR_MANAG_ADD3,
				RT5631_PWR_FAST_VREF_CTRL,
				RT5631_PWR_FAST_VREF_CTRL);
			FUNC1(rt5631->regmap, false);
			FUNC2(rt5631->regmap);
		}
		break;

	case SND_SOC_BIAS_OFF:
		FUNC6(component, RT5631_PWR_MANAG_ADD1, 0x0000);
		FUNC6(component, RT5631_PWR_MANAG_ADD2, 0x0000);
		FUNC6(component, RT5631_PWR_MANAG_ADD3, 0x0000);
		FUNC6(component, RT5631_PWR_MANAG_ADD4, 0x0000);
		break;

	default:
		break;
	}

	return 0;
}