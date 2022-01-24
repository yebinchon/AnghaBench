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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {scalar_t__ dmic2_clk_pin; int /*<<< orphan*/ * gpio_config; } ;
struct rt5677_priv {int /*<<< orphan*/  dsp_pri_lock; int /*<<< orphan*/  dsp_cmd_lock; TYPE_1__ pdata; int /*<<< orphan*/  regmap; struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT5677_DIG_MISC ; 
 scalar_t__ RT5677_DMIC_CLK2 ; 
 int RT5677_GPIO_NUM ; 
 int /*<<< orphan*/  RT5677_IRQ_DEBOUNCE_SEL_MASK ; 
 int RT5677_PWR_CORE_ISO ; 
 int /*<<< orphan*/  RT5677_PWR_DSP2 ; 
 int RT5677_PWR_SLIM_ISO ; 
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rt5677_dmic2_clk_1 ; 
 int /*<<< orphan*/  rt5677_dmic2_clk_2 ; 
 int /*<<< orphan*/  FUNC4 (struct rt5677_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC6 (struct snd_soc_component*) ; 
 struct rt5677_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC6(component);
	struct rt5677_priv *rt5677 = FUNC7(component);
	int i;

	rt5677->component = component;

	if (rt5677->pdata.dmic2_clk_pin == RT5677_DMIC_CLK2) {
		FUNC8(dapm,
			rt5677_dmic2_clk_2,
			FUNC0(rt5677_dmic2_clk_2));
	} else { /*use dmic1 clock by default*/
		FUNC8(dapm,
			rt5677_dmic2_clk_1,
			FUNC0(rt5677_dmic2_clk_1));
	}

	FUNC5(component, SND_SOC_BIAS_OFF);

	FUNC2(rt5677->regmap, RT5677_DIG_MISC,
			~RT5677_IRQ_DEBOUNCE_SEL_MASK, 0x0020);
	FUNC3(rt5677->regmap, RT5677_PWR_DSP2,
			RT5677_PWR_SLIM_ISO | RT5677_PWR_CORE_ISO);

	for (i = 0; i < RT5677_GPIO_NUM; i++)
		FUNC4(rt5677, i, rt5677->pdata.gpio_config[i]);

	FUNC1(&rt5677->dsp_cmd_lock);
	FUNC1(&rt5677->dsp_pri_lock);

	return 0;
}