#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {int /*<<< orphan*/  card; TYPE_1__* codec_dai; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct bdw_rt5677_priv {struct snd_soc_component* component; int /*<<< orphan*/  gpio_hp_en; } ;
struct TYPE_6__ {int /*<<< orphan*/  gpiod_dev; } ;
struct TYPE_5__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RT5677_AD_STEREO1_FILTER ; 
 int /*<<< orphan*/  RT5677_CLK_SEL_I2S1_ASRC ; 
 int RT5677_DA_STEREO_FILTER ; 
 int RT5677_I2S1_SOURCE ; 
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  bdw_rt5677_gpios ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  headphone_jack ; 
 TYPE_2__ headphone_jack_gpio ; 
 int /*<<< orphan*/  headphone_jack_pin ; 
 int /*<<< orphan*/  mic_jack ; 
 TYPE_2__ mic_jack_gpio ; 
 int /*<<< orphan*/  mic_jack_pin ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int,int /*<<< orphan*/ ) ; 
 struct bdw_rt5677_priv* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct snd_soc_dapm_context* FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dapm_context*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_pcm_runtime *rtd)
{
	struct bdw_rt5677_priv *bdw_rt5677 =
			FUNC7(rtd->card);
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct snd_soc_dapm_context *dapm = FUNC9(component);
	int ret;

	ret = FUNC4(component->dev, bdw_rt5677_gpios);
	if (ret)
		FUNC3(component->dev, "Failed to add driver gpios\n");

	/* Enable codec ASRC function for Stereo DAC/Stereo1 ADC/DMIC/I2S1.
	 * The ASRC clock source is clk_i2s1_asrc.
	 */
	FUNC6(component, RT5677_DA_STEREO_FILTER |
			RT5677_AD_STEREO1_FILTER | RT5677_I2S1_SOURCE,
			RT5677_CLK_SEL_I2S1_ASRC);

	/* Request rt5677 GPIO for headphone amp control */
	bdw_rt5677->gpio_hp_en = FUNC5(component->dev, "headphone-enable",
						GPIOD_OUT_LOW);
	if (FUNC0(bdw_rt5677->gpio_hp_en)) {
		FUNC2(component->dev, "Can't find HP_AMP_SHDN_L gpio\n");
		return FUNC1(bdw_rt5677->gpio_hp_en);
	}

	/* Create and initialize headphone jack */
	if (!FUNC8(rtd->card, "Headphone Jack",
			SND_JACK_HEADPHONE, &headphone_jack,
			&headphone_jack_pin, 1)) {
		headphone_jack_gpio.gpiod_dev = component->dev;
		if (FUNC11(&headphone_jack, 1,
				&headphone_jack_gpio))
			FUNC2(component->dev, "Can't add headphone jack gpio\n");
	} else {
		FUNC2(component->dev, "Can't create headphone jack\n");
	}

	/* Create and initialize mic jack */
	if (!FUNC8(rtd->card, "Mic Jack",
			SND_JACK_MICROPHONE, &mic_jack,
			&mic_jack_pin, 1)) {
		mic_jack_gpio.gpiod_dev = component->dev;
		if (FUNC11(&mic_jack, 1, &mic_jack_gpio))
			FUNC2(component->dev, "Can't add mic jack gpio\n");
	} else {
		FUNC2(component->dev, "Can't create mic jack\n");
	}
	bdw_rt5677->component = component;

	FUNC10(dapm, "MICBIAS1");
	return 0;
}