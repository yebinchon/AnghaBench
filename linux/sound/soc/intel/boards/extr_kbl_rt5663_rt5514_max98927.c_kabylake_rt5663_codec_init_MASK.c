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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; TYPE_2__* card; TYPE_1__* codec_dai; } ;
struct snd_soc_jack {int /*<<< orphan*/  jack; } ;
struct snd_soc_component {int dummy; } ;
struct kbl_codec_private {struct snd_soc_jack kabylake_headset; } ;
struct TYPE_4__ {int /*<<< orphan*/  dapm; } ;
struct TYPE_3__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int /*<<< orphan*/  KEY_VOICECOMMAND ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  kabylake_audio_card ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct kbl_codec_private* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,struct snd_soc_jack*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,struct snd_soc_jack*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_pcm_runtime *rtd)
{
	int ret;
	struct kbl_codec_private *ctx = FUNC2(rtd->card);
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct snd_soc_jack *jack;

	/*
	 * Headset buttons map to the google Reference headset.
	 * These can be configured by userspace.
	 */
	ret = FUNC3(&kabylake_audio_card, "Headset Jack",
			SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
			SND_JACK_BTN_2 | SND_JACK_BTN_3, &ctx->kabylake_headset,
			NULL, 0);
	if (ret) {
		FUNC0(rtd->dev, "Headset Jack creation failed %d\n", ret);
		return ret;
	}

	jack = &ctx->kabylake_headset;
	FUNC1(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
	FUNC1(jack->jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
	FUNC1(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
	FUNC1(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);

	FUNC4(component, &ctx->kabylake_headset, NULL);

	ret = FUNC5(&rtd->card->dapm, "DMIC");
	if (ret)
		FUNC0(rtd->dev, "DMIC - Ignore suspend failed = %d\n", ret);

	return ret;
}