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
struct snd_soc_jack {int /*<<< orphan*/  jack; } ;
struct sof_card_private {struct snd_soc_jack sof_headset; int /*<<< orphan*/  mclk; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; int /*<<< orphan*/  card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int /*<<< orphan*/  KEY_VOICECOMMAND ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 int RT5682_AD_STEREO1_FILTER ; 
 int /*<<< orphan*/  RT5682_CLK_SEL_I2S1_ASRC ; 
 int RT5682_DA_STEREO1_FILTER ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADSET ; 
 int SOF_RT5682_MCLK_24MHZ ; 
 int SOF_RT5682_MCLK_BYTCHT_EN ; 
 int SOF_RT5682_MCLK_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sof_card_private* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int,struct snd_soc_jack*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_soc_component*,struct snd_soc_jack*,int /*<<< orphan*/ *) ; 
 int sof_rt5682_quirk ; 

__attribute__((used)) static int FUNC9(struct snd_soc_pcm_runtime *rtd)
{
	struct sof_card_private *ctx = FUNC6(rtd->card);
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct snd_soc_jack *jack;
	int ret;

	/* need to enable ASRC function for 24MHz mclk rate */
	if ((sof_rt5682_quirk & SOF_RT5682_MCLK_EN) &&
	    (sof_rt5682_quirk & SOF_RT5682_MCLK_24MHZ)) {
		FUNC4(component, RT5682_DA_STEREO1_FILTER |
					RT5682_AD_STEREO1_FILTER,
					RT5682_CLK_SEL_I2S1_ASRC);
	}

	if (sof_rt5682_quirk & SOF_RT5682_MCLK_BYTCHT_EN) {
		/*
		 * The firmware might enable the clock at
		 * boot (this information may or may not
		 * be reflected in the enable clock register).
		 * To change the rate we must disable the clock
		 * first to cover these cases. Due to common
		 * clock framework restrictions that do not allow
		 * to disable a clock that has not been enabled,
		 * we need to enable the clock first.
		 */
		ret = FUNC1(ctx->mclk);
		if (!ret)
			FUNC0(ctx->mclk);

		ret = FUNC2(ctx->mclk, 19200000);

		if (ret)
			FUNC3(rtd->dev, "unable to set MCLK rate\n");
	}

	/*
	 * Headset buttons map to the google Reference headset.
	 * These can be configured by userspace.
	 */
	ret = FUNC7(rtd->card, "Headset Jack",
				    SND_JACK_HEADSET | SND_JACK_BTN_0 |
				    SND_JACK_BTN_1 | SND_JACK_BTN_2 |
				    SND_JACK_BTN_3,
				    &ctx->sof_headset, NULL, 0);
	if (ret) {
		FUNC3(rtd->dev, "Headset Jack creation failed: %d\n", ret);
		return ret;
	}

	jack = &ctx->sof_headset;

	FUNC5(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
	FUNC5(jack->jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
	FUNC5(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
	FUNC5(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);
	ret = FUNC8(component, jack, NULL);

	if (ret) {
		FUNC3(rtd->dev, "Headset Jack call-back failed: %d\n", ret);
		return ret;
	}

	return ret;
}