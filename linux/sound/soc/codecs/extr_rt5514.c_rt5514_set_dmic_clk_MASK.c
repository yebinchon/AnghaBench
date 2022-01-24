#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {scalar_t__ dmic_init_delay; } ;
struct rt5514_priv {TYPE_1__ pdata; int /*<<< orphan*/  regmap; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5514_CLK_CTRL1 ; 
 int /*<<< orphan*/  RT5514_CLK_DMIC_OUT_SEL_MASK ; 
 int RT5514_CLK_DMIC_OUT_SEL_SFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct rt5514_priv* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct rt5514_priv *rt5514 = FUNC4(component);
	int idx;

	idx = FUNC3(component, rt5514->sysclk);
	if (idx < 0)
		FUNC0(component->dev, "Failed to set DMIC clock\n");
	else
		FUNC2(rt5514->regmap, RT5514_CLK_CTRL1,
			RT5514_CLK_DMIC_OUT_SEL_MASK,
			idx << RT5514_CLK_DMIC_OUT_SEL_SFT);

	if (rt5514->pdata.dmic_init_delay)
		FUNC1(rt5514->pdata.dmic_init_delay);

	return idx;
}