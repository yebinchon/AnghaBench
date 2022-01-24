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
struct snd_soc_pcm_runtime {struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  cz_jack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_soc_card*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_pcm_runtime *rtd)
{
	int ret;
	struct snd_soc_card *card;
	struct snd_soc_component *codec;

	codec = rtd->codec_dai->component;
	card = rtd->card;

	ret = FUNC2(card, "Headset Jack",
				SND_JACK_HEADPHONE | SND_JACK_MICROPHONE |
				SND_JACK_BTN_0 | SND_JACK_BTN_1 |
				SND_JACK_BTN_2 | SND_JACK_BTN_3,
				&cz_jack, NULL, 0);
	if (ret) {
		FUNC0(card->dev, "HP jack creation failed %d\n", ret);
		return ret;
	}

	FUNC1(codec, &cz_jack, &cz_jack, &cz_jack);

	return 0;
}