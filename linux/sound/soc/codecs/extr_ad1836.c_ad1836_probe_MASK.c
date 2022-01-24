#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct ad1836_priv {size_t type; int /*<<< orphan*/  regmap; } ;
struct TYPE_5__ {int channels_max; } ;
struct TYPE_4__ {int channels_max; } ;
struct TYPE_6__ {TYPE_2__ capture; TYPE_1__ playback; } ;

/* Variables and functions */
 size_t AD1836 ; 
 int /*<<< orphan*/  AD1836_ADC_CTRL1 ; 
 int /*<<< orphan*/  AD1836_ADC_CTRL2 ; 
 int /*<<< orphan*/  AD1836_ADC_CTRL3 ; 
 int /*<<< orphan*/  AD1836_DAC_CTRL1 ; 
 int /*<<< orphan*/  AD1836_DAC_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad1836_controls ; 
 int /*<<< orphan*/  ad183x_adc_controls ; 
 int /*<<< orphan*/  ad183x_adc_dapm_widgets ; 
 int /*<<< orphan*/  ad183x_adc_routes ; 
 int /*<<< orphan*/  ad183x_dac_controls ; 
 int /*<<< orphan*/  ad183x_dac_dapm_widgets ; 
 int /*<<< orphan*/  ad183x_dac_routes ; 
 TYPE_3__* ad183x_dais ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_soc_component*) ; 
 struct ad1836_priv* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	struct ad1836_priv *ad1836 = FUNC6(component);
	struct snd_soc_dapm_context *dapm = FUNC5(component);
	int num_dacs, num_adcs;
	int ret = 0;
	int i;

	num_dacs = ad183x_dais[ad1836->type].playback.channels_max / 2;
	num_adcs = ad183x_dais[ad1836->type].capture.channels_max / 2;

	/* default setting for ad1836 */
	/* de-emphasis: 48kHz, power-on dac */
	FUNC3(ad1836->regmap, AD1836_DAC_CTRL1, 0x300);
	/* unmute dac channels */
	FUNC3(ad1836->regmap, AD1836_DAC_CTRL2, 0x0);
	/* high-pass filter enable, power-on adc */
	FUNC3(ad1836->regmap, AD1836_ADC_CTRL1, 0x100);
	/* unmute adc channles, adc aux mode */
	FUNC3(ad1836->regmap, AD1836_ADC_CTRL2, 0x180);
	/* volume */
	for (i = 1; i <= num_dacs; ++i) {
		FUNC3(ad1836->regmap, FUNC0(i), 0x3FF);
		FUNC3(ad1836->regmap, FUNC1(i), 0x3FF);
	}

	if (ad1836->type == AD1836) {
		/* left/right diff:PGA/MUX */
		FUNC3(ad1836->regmap, AD1836_ADC_CTRL3, 0x3A);
		ret = FUNC4(component, ad1836_controls,
				FUNC2(ad1836_controls));
		if (ret)
			return ret;
	} else {
		FUNC3(ad1836->regmap, AD1836_ADC_CTRL3, 0x00);
	}

	ret = FUNC4(component, ad183x_dac_controls, num_dacs * 2);
	if (ret)
		return ret;

	ret = FUNC4(component, ad183x_adc_controls, num_adcs);
	if (ret)
		return ret;

	ret = FUNC8(dapm, ad183x_dac_dapm_widgets, num_dacs);
	if (ret)
		return ret;

	ret = FUNC8(dapm, ad183x_adc_dapm_widgets, num_adcs);
	if (ret)
		return ret;

	ret = FUNC7(dapm, ad183x_dac_routes, num_dacs);
	if (ret)
		return ret;

	ret = FUNC7(dapm, ad183x_adc_routes, num_adcs);
	if (ret)
		return ret;

	return ret;
}