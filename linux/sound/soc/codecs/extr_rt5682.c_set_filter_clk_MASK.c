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
struct snd_soc_dapm_widget {scalar_t__ shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5682_priv {int* lrck; int sysclk; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int EINVAL ; 
 int RT5682_ADC_OSR_MASK ; 
 int RT5682_ADC_OSR_SFT ; 
 int RT5682_ADDA_CLK_1 ; 
 size_t RT5682_AIF1 ; 
 size_t RT5682_AIF2 ; 
 int RT5682_DAC_OSR_MASK ; 
 int RT5682_DAC_OSR_SFT ; 
 int RT5682_FILTER_CLK_DIV_MASK ; 
 int RT5682_FILTER_CLK_DIV_SFT ; 
 int RT5682_GP4_PIN_ADCDAT2 ; 
 int RT5682_GP4_PIN_MASK ; 
 int /*<<< orphan*/  RT5682_GPIO_CTRL_1 ; 
 int RT5682_PLL_TRACK_2 ; 
 int RT5682_PLL_TRACK_3 ; 
 scalar_t__ RT5682_PWR_ADC_S1F_BIT ; 
 int FUNC1 (struct rt5682_priv*,int,int const*,int) ; 
 struct rt5682_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int,int,int) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component =
		FUNC5(w->dapm);
	struct rt5682_priv *rt5682 = FUNC2(component);
	int ref, val, reg, idx = -EINVAL;
	static const int div_f[] = {1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48};
	static const int div_o[] = {1, 2, 4, 6, 8, 12, 16, 24, 32, 48};

	val = FUNC3(component, RT5682_GPIO_CTRL_1) &
		RT5682_GP4_PIN_MASK;
	if (w->shift == RT5682_PWR_ADC_S1F_BIT &&
		val == RT5682_GP4_PIN_ADCDAT2)
		ref = 256 * rt5682->lrck[RT5682_AIF2];
	else
		ref = 256 * rt5682->lrck[RT5682_AIF1];

	idx = FUNC1(rt5682, ref, div_f, FUNC0(div_f));

	if (w->shift == RT5682_PWR_ADC_S1F_BIT)
		reg = RT5682_PLL_TRACK_3;
	else
		reg = RT5682_PLL_TRACK_2;

	FUNC4(component, reg,
		RT5682_FILTER_CLK_DIV_MASK, idx << RT5682_FILTER_CLK_DIV_SFT);

	/* select over sample rate */
	for (idx = 0; idx < FUNC0(div_o); idx++) {
		if (rt5682->sysclk <= 12288000 * div_o[idx])
			break;
	}

	FUNC4(component, RT5682_ADDA_CLK_1,
		RT5682_ADC_OSR_MASK | RT5682_DAC_OSR_MASK,
		(idx << RT5682_ADC_OSR_SFT) | (idx << RT5682_DAC_OSR_SFT));

	return 0;
}