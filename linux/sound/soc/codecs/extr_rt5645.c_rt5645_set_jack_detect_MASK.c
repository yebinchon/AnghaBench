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
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt5645_priv {scalar_t__ codec_type; int en_button_func; int /*<<< orphan*/  regmap; struct snd_soc_jack* btn_jack; struct snd_soc_jack* mic_jack; struct snd_soc_jack* hp_jack; } ;

/* Variables and functions */
 scalar_t__ CODEC_TYPE_RT5650 ; 
 int /*<<< orphan*/  RT5645_DIG_GATE_CTRL ; 
 int /*<<< orphan*/  RT5645_GEN_CTRL1 ; 
 int /*<<< orphan*/  RT5645_GP1_PIN_IRQ ; 
 int /*<<< orphan*/  RT5645_GPIO_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rt5645_priv*) ; 
 struct rt5645_priv* FUNC2 (struct snd_soc_component*) ; 

int FUNC3(struct snd_soc_component *component,
	struct snd_soc_jack *hp_jack, struct snd_soc_jack *mic_jack,
	struct snd_soc_jack *btn_jack)
{
	struct rt5645_priv *rt5645 = FUNC2(component);

	rt5645->hp_jack = hp_jack;
	rt5645->mic_jack = mic_jack;
	rt5645->btn_jack = btn_jack;
	if (rt5645->btn_jack && rt5645->codec_type == CODEC_TYPE_RT5650) {
		rt5645->en_button_func = true;
		FUNC0(rt5645->regmap, RT5645_GPIO_CTRL1,
				RT5645_GP1_PIN_IRQ, RT5645_GP1_PIN_IRQ);
		FUNC0(rt5645->regmap, RT5645_GEN_CTRL1,
				RT5645_DIG_GATE_CTRL, RT5645_DIG_GATE_CTRL);
	}
	FUNC1(0, rt5645);

	return 0;
}