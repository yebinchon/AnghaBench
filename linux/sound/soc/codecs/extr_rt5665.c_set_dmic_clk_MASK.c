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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5665_priv {int sysclk; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5665_ADDA_CLK_1 ; 
 int /*<<< orphan*/  RT5665_DMIC_CLK_MASK ; 
 int RT5665_DMIC_CLK_SFT ; 
 int /*<<< orphan*/  RT5665_DMIC_CTRL_1 ; 
 int /*<<< orphan*/  RT5665_I2S_PD1_SFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rt5665_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct rt5665_priv *rt5665 = FUNC3(component);
	int pd, idx;

	pd = FUNC2(rt5665->regmap,
		RT5665_ADDA_CLK_1, RT5665_I2S_PD1_SFT);
	idx = FUNC1(rt5665->sysclk / pd);

	if (idx < 0)
		FUNC0(component->dev, "Failed to set DMIC clock\n");
	else {
		FUNC4(component, RT5665_DMIC_CTRL_1,
			RT5665_DMIC_CLK_MASK, idx << RT5665_DMIC_CLK_SFT);
	}
	return idx;
}