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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int sar_hs_type; } ;
struct rt5665_priv {int sar_adc_value; scalar_t__ jack_type; int /*<<< orphan*/  regmap; TYPE_1__ pdata; int /*<<< orphan*/  component; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5665_EJD_CTRL_1 ; 
 int /*<<< orphan*/  RT5665_EJD_CTRL_3 ; 
 int /*<<< orphan*/  RT5665_GPIO_STA ; 
 int /*<<< orphan*/  RT5665_IL_CMD_1 ; 
 int /*<<< orphan*/  RT5665_MICBIAS_2 ; 
 int /*<<< orphan*/  RT5665_SAR_IL_CMD_1 ; 
 int /*<<< orphan*/  RT5665_SAR_IL_CMD_4 ; 
 scalar_t__ SND_JACK_HEADPHONE ; 
 scalar_t__ SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_soc_component*) ; 
 struct rt5665_priv* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_component *component, int jack_insert)
{
	struct rt5665_priv *rt5665 = FUNC6(component);
	struct snd_soc_dapm_context *dapm = FUNC5(component);
	unsigned int sar_hs_type, val;

	if (jack_insert) {
		FUNC9(dapm, "MICBIAS1");
		FUNC10(dapm);

		FUNC2(rt5665->regmap, RT5665_MICBIAS_2, 0x100,
			0x100);

		FUNC1(rt5665->regmap, RT5665_GPIO_STA, &val);
		if (val & 0x4) {
			FUNC2(rt5665->regmap, RT5665_EJD_CTRL_1,
				0x100, 0);

			FUNC1(rt5665->regmap, RT5665_GPIO_STA, &val);
			while (val & 0x4) {
				FUNC11(10000, 15000);
				FUNC1(rt5665->regmap, RT5665_GPIO_STA,
					&val);
			}
		}

		FUNC2(rt5665->regmap, RT5665_EJD_CTRL_1,
			0x1a0, 0x120);
		FUNC3(rt5665->regmap, RT5665_EJD_CTRL_3, 0x3424);
		FUNC3(rt5665->regmap, RT5665_IL_CMD_1, 0x0048);
		FUNC3(rt5665->regmap, RT5665_SAR_IL_CMD_1, 0xa291);

		FUNC11(10000, 15000);

		rt5665->sar_adc_value = FUNC7(rt5665->component,
			RT5665_SAR_IL_CMD_4) & 0x7ff;

		sar_hs_type = rt5665->pdata.sar_hs_type ?
			rt5665->pdata.sar_hs_type : 729;

		if (rt5665->sar_adc_value > sar_hs_type) {
			rt5665->jack_type = SND_JACK_HEADSET;
			FUNC4(component, true);
			} else {
			rt5665->jack_type = SND_JACK_HEADPHONE;
			FUNC3(rt5665->regmap, RT5665_SAR_IL_CMD_1,
				0x2291);
			FUNC2(rt5665->regmap, RT5665_MICBIAS_2,
				0x100, 0);
			FUNC8(dapm, "MICBIAS1");
			FUNC10(dapm);
		}
	} else {
		FUNC3(rt5665->regmap, RT5665_SAR_IL_CMD_1, 0x2291);
		FUNC2(rt5665->regmap, RT5665_MICBIAS_2, 0x100, 0);
		FUNC8(dapm, "MICBIAS1");
		FUNC10(dapm);
		if (rt5665->jack_type == SND_JACK_HEADSET)
			FUNC4(component, false);
		rt5665->jack_type = 0;
	}

	FUNC0(component->dev, "jack_type = %d\n", rt5665->jack_type);
	return rt5665->jack_type;
}