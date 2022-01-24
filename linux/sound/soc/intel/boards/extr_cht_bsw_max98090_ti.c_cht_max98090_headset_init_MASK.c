#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; } ;
struct cht_mc_private {struct snd_soc_jack jack; } ;

/* Variables and functions */
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct cht_mc_private* FUNC1 (struct snd_soc_card*) ; 
 int FUNC2 (struct snd_soc_card*,char*,int,struct snd_soc_jack*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*,struct snd_soc_jack*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct snd_soc_card *card = component->card;
	struct cht_mc_private *ctx = FUNC1(card);
	struct snd_soc_jack *jack = &ctx->jack;
	int jack_type;
	int ret;

	/*
	 * TI supports 4 butons headset detection
	 * KEY_MEDIA
	 * KEY_VOICECOMMAND
	 * KEY_VOLUMEUP
	 * KEY_VOLUMEDOWN
	 */
	jack_type = SND_JACK_HEADPHONE | SND_JACK_MICROPHONE |
		    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
		    SND_JACK_BTN_2 | SND_JACK_BTN_3;

	ret = FUNC2(card, "Headset Jack", jack_type,
				    jack, NULL, 0);
	if (ret) {
		FUNC0(card->dev, "Headset Jack creation failed %d\n", ret);
		return ret;
	}

	return FUNC3(component, jack);
}