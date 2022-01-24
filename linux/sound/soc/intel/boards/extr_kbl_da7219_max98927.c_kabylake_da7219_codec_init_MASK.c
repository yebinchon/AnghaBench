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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_jack {int /*<<< orphan*/  jack; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm; } ;
struct kbl_codec_private {struct snd_soc_jack kabylake_headset; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,struct snd_soc_jack*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  kabylake_audio_card ; 
 int /*<<< orphan*/  kabylake_ssp1_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct kbl_codec_private* FUNC4 (struct snd_soc_card*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,struct snd_soc_jack*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_pcm_runtime *rtd)
{
	struct kbl_codec_private *ctx = FUNC4(rtd->card);
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct snd_soc_jack *jack;
	struct snd_soc_card *card = rtd->card;
	int ret;


	ret = FUNC6(&card->dapm,
			kabylake_ssp1_map,
			FUNC0(kabylake_ssp1_map));

	/*
	 * Headset buttons map to the google Reference headset.
	 * These can be configured by userspace.
	 */
	ret = FUNC5(kabylake_audio_card, "Headset Jack",
			SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
			SND_JACK_BTN_2 | SND_JACK_BTN_3 | SND_JACK_LINEOUT,
			&ctx->kabylake_headset, NULL, 0);
	if (ret) {
		FUNC2(rtd->dev, "Headset Jack creation failed: %d\n", ret);
		return ret;
	}

	jack = &ctx->kabylake_headset;
	FUNC3(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
	FUNC3(jack->jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
	FUNC3(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
	FUNC3(jack->jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);

	FUNC1(component, &ctx->kabylake_headset);

	return 0;
}