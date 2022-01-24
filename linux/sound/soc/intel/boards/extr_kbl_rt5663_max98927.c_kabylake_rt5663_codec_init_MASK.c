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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; TYPE_1__* codec_dai; int /*<<< orphan*/  card; } ;
struct snd_soc_jack {int /*<<< orphan*/  jack; } ;
struct snd_soc_component {int dummy; } ;
struct kbl_rt5663_private {struct snd_soc_jack kabylake_headset; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;

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
 struct kbl_rt5663_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,struct snd_soc_jack*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,struct snd_soc_jack*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_pcm_runtime *rtd)
{
	int ret;
	struct kbl_rt5663_private *ctx = FUNC2(rtd->card);
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct snd_soc_jack *jack;

	/*
	 * Headset buttons map to the google Reference headset.
	 * These can be configured by userspace.
	 */
	ret = FUNC3(kabylake_audio_card, "Headset Jack",
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

	return ret;
}