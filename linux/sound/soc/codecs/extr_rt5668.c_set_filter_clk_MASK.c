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
struct rt5668_priv {int* lrck; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int EINVAL ; 
 size_t RT5668_AIF1 ; 
 size_t RT5668_AIF2 ; 
 int /*<<< orphan*/  RT5668_FILTER_CLK_SEL_MASK ; 
 int RT5668_FILTER_CLK_SEL_SFT ; 
 int RT5668_GP4_PIN_ADCDAT2 ; 
 int RT5668_GP4_PIN_MASK ; 
 int /*<<< orphan*/  RT5668_GPIO_CTRL_1 ; 
 int RT5668_PLL_TRACK_2 ; 
 int RT5668_PLL_TRACK_3 ; 
 scalar_t__ RT5668_PWR_ADC_S1F_BIT ; 
 int FUNC1 (struct rt5668_priv*,int,int const*,int /*<<< orphan*/ ) ; 
 struct rt5668_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component =
		FUNC5(w->dapm);
	struct rt5668_priv *rt5668 = FUNC2(component);
	int ref, val, reg, idx = -EINVAL;
	static const int div[] = {1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48};

	val = FUNC3(component, RT5668_GPIO_CTRL_1) &
		RT5668_GP4_PIN_MASK;
	if (w->shift == RT5668_PWR_ADC_S1F_BIT &&
		val == RT5668_GP4_PIN_ADCDAT2)
		ref = 256 * rt5668->lrck[RT5668_AIF2];
	else
		ref = 256 * rt5668->lrck[RT5668_AIF1];

	idx = FUNC1(rt5668, ref, div, FUNC0(div));

	if (w->shift == RT5668_PWR_ADC_S1F_BIT)
		reg = RT5668_PLL_TRACK_3;
	else
		reg = RT5668_PLL_TRACK_2;

	FUNC4(component, reg,
		RT5668_FILTER_CLK_SEL_MASK, idx << RT5668_FILTER_CLK_SEL_SFT);

	return 0;
}