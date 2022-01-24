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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; TYPE_1__* card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_jack {int /*<<< orphan*/  jack; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct kbl_codec_private {struct snd_soc_jack kabylake_headset; } ;
struct TYPE_2__ {int /*<<< orphan*/  dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7219_CLKSRC_MCLK ; 
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int /*<<< orphan*/  KEY_VOICECOMMAND ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_LINEOUT ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,struct snd_soc_jack*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  kabylake_audio_card ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct kbl_codec_private* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,struct snd_soc_jack*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_pcm_runtime *rtd)
{
	struct kbl_codec_private *ctx = FUNC3(rtd->card);
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_jack *jack;
	int ret;

	/* Configure sysclk for codec */
	ret = FUNC5(codec_dai, DA7219_CLKSRC_MCLK, 24576000,
						SND_SOC_CLOCK_IN);
	if (ret) {
		FUNC1(rtd->dev, "can't set codec sysclk configuration\n");
		return ret;
	}

	/*
	 * Headset buttons map to the google Reference headset.
	 * These can be configured by userspace.
	 */
	ret = FUNC4(kabylake_audio_card, "Headset Jack",
			SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
			SND_JACK_BTN_2 | SND_JACK_BTN_3 | SND_JACK_LINEOUT,
			&ctx->kabylake_headset, NULL, 0);
	if (ret) {
		FUNC1(rtd->dev, "Headset Jack creation failed: %d\n", ret);
		return ret;
	}

	jack = &ctx->kabylake_headset;

	FUNC2(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
	FUNC2(jack->jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
	FUNC2(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
	FUNC2(jack->jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);
	FUNC0(component, &ctx->kabylake_headset);

	ret = FUNC6(&rtd->card->dapm, "SoC DMIC");
	if (ret)
		FUNC1(rtd->dev, "SoC DMIC - Ignore suspend failed %d\n", ret);

	return ret;
}