#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ jd_mode; scalar_t__ level_trigger_irq; } ;
struct rt5645_priv {int jack_type; int /*<<< orphan*/  regmap; TYPE_2__ pdata; scalar_t__ en_button_func; } ;
struct TYPE_3__ {int /*<<< orphan*/  instantiated; } ;

/* Variables and functions */
 int RT5645_CBJ_BST1_EN ; 
 int RT5645_CBJ_MN_JD ; 
 int /*<<< orphan*/  RT5645_CHARGE_PUMP ; 
 int /*<<< orphan*/  RT5645_HP_VOL ; 
 int /*<<< orphan*/  RT5645_IN1_CTRL1 ; 
 int /*<<< orphan*/  RT5645_IN1_CTRL2 ; 
 int /*<<< orphan*/  RT5645_IN1_CTRL3 ; 
 int /*<<< orphan*/  RT5645_IRQ_CTRL2 ; 
 int RT5645_JD_1_1_INV ; 
 int RT5645_JD_1_1_MASK ; 
 int RT5645_JD_1_1_NOR ; 
 int /*<<< orphan*/  RT5645_JD_CTRL3 ; 
 int RT5645_L_MUTE ; 
 int /*<<< orphan*/  RT5645_PWR_ANLG1 ; 
 int RT5645_PWR_LDO2 ; 
 int RT5645_PWR_MB ; 
 int RT5645_PWR_MIC_DET ; 
 int /*<<< orphan*/  RT5645_PWR_MIXER ; 
 int /*<<< orphan*/  RT5645_PWR_VOL ; 
 int RT5645_PWR_VREF2 ; 
 int RT5645_R_MUTE ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int) ; 
 struct snd_soc_dapm_context* FUNC6 (struct snd_soc_component*) ; 
 struct rt5645_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component, int jack_insert)
{
	struct snd_soc_dapm_context *dapm = FUNC6(component);
	struct rt5645_priv *rt5645 = FUNC7(component);
	unsigned int val;

	if (jack_insert) {
		FUNC4(rt5645->regmap, RT5645_CHARGE_PUMP, 0x0e06);

		/* for jack type detect */
		FUNC9(dapm, "LDO2");
		FUNC9(dapm, "Mic Det Power");
		FUNC10(dapm);
		if (!dapm->card->instantiated) {
			/* Power up necessary bits for JD if dapm is
			   not ready yet */
			FUNC3(rt5645->regmap, RT5645_PWR_ANLG1,
				RT5645_PWR_MB | RT5645_PWR_VREF2,
				RT5645_PWR_MB | RT5645_PWR_VREF2);
			FUNC3(rt5645->regmap, RT5645_PWR_MIXER,
				RT5645_PWR_LDO2, RT5645_PWR_LDO2);
			FUNC3(rt5645->regmap, RT5645_PWR_VOL,
				RT5645_PWR_MIC_DET, RT5645_PWR_MIC_DET);
		}

		FUNC4(rt5645->regmap, RT5645_JD_CTRL3, 0x00f0);
		FUNC3(rt5645->regmap, RT5645_IN1_CTRL2,
			RT5645_CBJ_MN_JD, RT5645_CBJ_MN_JD);
		FUNC3(rt5645->regmap, RT5645_IN1_CTRL1,
			RT5645_CBJ_BST1_EN, RT5645_CBJ_BST1_EN);
		FUNC1(100);
		FUNC3(rt5645->regmap, RT5645_IN1_CTRL2,
			RT5645_CBJ_MN_JD, 0);

		FUNC1(600);
		FUNC2(rt5645->regmap, RT5645_IN1_CTRL3, &val);
		val &= 0x7;
		FUNC0(component->dev, "val = %d\n", val);

		if (val == 1 || val == 2) {
			rt5645->jack_type = SND_JACK_HEADSET;
			if (rt5645->en_button_func) {
				FUNC5(component, true);
			}
		} else {
			FUNC8(dapm, "Mic Det Power");
			FUNC10(dapm);
			rt5645->jack_type = SND_JACK_HEADPHONE;
		}
		if (rt5645->pdata.level_trigger_irq)
			FUNC3(rt5645->regmap, RT5645_IRQ_CTRL2,
				RT5645_JD_1_1_MASK, RT5645_JD_1_1_NOR);
	} else { /* jack out */
		rt5645->jack_type = 0;

		FUNC3(rt5645->regmap, RT5645_HP_VOL,
			RT5645_L_MUTE | RT5645_R_MUTE,
			RT5645_L_MUTE | RT5645_R_MUTE);
		FUNC3(rt5645->regmap, RT5645_IN1_CTRL2,
			RT5645_CBJ_MN_JD, RT5645_CBJ_MN_JD);
		FUNC3(rt5645->regmap, RT5645_IN1_CTRL1,
			RT5645_CBJ_BST1_EN, 0);

		if (rt5645->en_button_func)
			FUNC5(component, false);

		if (rt5645->pdata.jd_mode == 0)
			FUNC8(dapm, "LDO2");
		FUNC8(dapm, "Mic Det Power");
		FUNC10(dapm);
		if (rt5645->pdata.level_trigger_irq)
			FUNC3(rt5645->regmap, RT5645_IRQ_CTRL2,
				RT5645_JD_1_1_MASK, RT5645_JD_1_1_INV);
	}

	return rt5645->jack_type;
}