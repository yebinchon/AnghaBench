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
struct kbl_codec_private {int /*<<< orphan*/  gpio_lo_mute; } ;
struct TYPE_6__ {int /*<<< orphan*/  gpiod_dev; } ;
struct TYPE_5__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_JACK_LINEOUT ; 
 int /*<<< orphan*/  SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  acpi_rt5660_gpios ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lineout_jack ; 
 TYPE_2__ lineout_jack_gpio ; 
 int /*<<< orphan*/  lineout_jack_pin ; 
 int /*<<< orphan*/  mic_jack ; 
 TYPE_2__ mic_jack_gpio ; 
 int /*<<< orphan*/  mic_jack_pin ; 
 struct kbl_codec_private* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct snd_soc_dapm_context* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dapm_context*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_pcm_runtime *rtd)
{
	int ret;
	struct kbl_codec_private *ctx = FUNC6(rtd->card);
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct snd_soc_dapm_context *dapm = FUNC8(component);

	ret = FUNC4(component->dev, acpi_rt5660_gpios);
	if (ret)
		FUNC3(component->dev, "Failed to add driver gpios\n");

	/* Request rt5660 GPIO for lineout mute control, return if fails */
	ctx->gpio_lo_mute = FUNC5(component->dev, "lineout-mute",
					   GPIOD_OUT_HIGH);
	if (FUNC0(ctx->gpio_lo_mute)) {
		FUNC2(component->dev, "Can't find GPIO_MUTE# gpio\n");
		return FUNC1(ctx->gpio_lo_mute);
	}

	/* Create and initialize headphone jack, this jack is not mandatory, don't return if fails */
	ret = FUNC7(rtd->card, "Lineout Jack",
				    SND_JACK_LINEOUT, &lineout_jack,
				    &lineout_jack_pin, 1);
	if (ret)
		FUNC3(component->dev, "Can't create Lineout jack\n");
	else {
		lineout_jack_gpio.gpiod_dev = component->dev;
		ret = FUNC10(&lineout_jack, 1,
					     &lineout_jack_gpio);
		if (ret)
			FUNC3(component->dev, "Can't add Lineout jack gpio\n");
	}

	/* Create and initialize mic jack, this jack is not mandatory, don't return if fails */
	ret = FUNC7(rtd->card, "Mic Jack",
				    SND_JACK_MICROPHONE, &mic_jack,
				    &mic_jack_pin, 1);
	if (ret)
		FUNC3(component->dev, "Can't create mic jack\n");
	else {
		mic_jack_gpio.gpiod_dev = component->dev;
		ret = FUNC10(&mic_jack, 1, &mic_jack_gpio);
		if (ret)
			FUNC3(component->dev, "Can't add mic jack gpio\n");
	}

	/* Here we enable some dapms in advance to reduce the pop noise for recording via line-in */
	FUNC9(dapm, "MICBIAS1");
	FUNC9(dapm, "BST1");
	FUNC9(dapm, "BST2");

	return 0;
}