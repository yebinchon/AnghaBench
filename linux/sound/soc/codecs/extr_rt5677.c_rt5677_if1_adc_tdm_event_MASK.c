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
struct rt5677_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int RT5677_IF1_ADC_CTRL_MASK ; 
 int /*<<< orphan*/  RT5677_IF1_ADC_MODE_MASK ; 
 int /*<<< orphan*/  RT5677_IF1_ADC_MODE_TDM ; 
 int /*<<< orphan*/  RT5677_TDM1_CTRL1 ; 
 int /*<<< orphan*/  RT5677_TDM1_CTRL2 ; 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rt5677_priv* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	struct rt5677_priv *rt5677 = FUNC2(component);
	unsigned int value;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC0(rt5677->regmap, RT5677_TDM1_CTRL2, &value);
		if (value & RT5677_IF1_ADC_CTRL_MASK)
			FUNC1(rt5677->regmap, RT5677_TDM1_CTRL1,
				RT5677_IF1_ADC_MODE_MASK,
				RT5677_IF1_ADC_MODE_TDM);
		break;

	default:
		return 0;
	}

	return 0;
}